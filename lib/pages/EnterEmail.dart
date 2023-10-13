import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:megapixels_auditions/pages/audition.dart';

class EnterEmail extends StatefulWidget {
  const EnterEmail({super.key});

  @override
  State<EnterEmail> createState() => _EnterEmailState();
}

class _EnterEmailState extends State<EnterEmail> {
  TextEditingController editingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/bg.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.black.withOpacity(0.5),
                Colors.black.withOpacity(0.5),
                Colors.black.withOpacity(0.5),
                Colors.black.withOpacity(0.5),
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            ),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Get.offAll((() => AuditionPage()));
                      },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                padding:
                    const EdgeInsets.symmetric(horizontal: 90, vertical: 20),
                child: Image.asset(
                  'assets/slogo.png',
                  scale: 3,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              _buildTextField(
                  'Email', 'Enter Your Email', editingController, () {}, true),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: 180,
                child: ElevatedButton(
                  onPressed: () {
                    if (editingController.text.isNotEmpty) {
                      GetStorage().write('email', editingController.text);
                      Get.offAll((() => AuditionPage()));
                    } else {
                      Get.snackbar('Error', 'Please enter your email');
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Text('Continue'),
                        Spacer(),
                        Icon(Icons.arrow_forward)
                      ],
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
            ]),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(
    String label,
    String hint,
    TextEditingController editingController,
    Function? onTap,
    bool isenabled,
  ) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: InkWell(
          onTap: () {
            if (onTap != null) {
              onTap();
            }
          },
          child: TextField(
            enabled: isenabled,
            keyboardType: label == 'Phone'
                ? TextInputType.phone
                : label == 'Email'
                    ? TextInputType.emailAddress
                    : TextInputType.text,
            decoration: InputDecoration(
              labelText: label,
              hintText: hint,
              hintStyle: GoogleFonts.dmSans(color: Colors.white),
              labelStyle: GoogleFonts.dmSans(color: Colors.white),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[400]!),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.pink),
              ),
            ),
            textInputAction: TextInputAction.go,
            style: GoogleFonts.dmSans(color: Colors.white),
            cursorColor: Colors.pink,
            controller: editingController,
          ),
        ));
  }
}
