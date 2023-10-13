// ignore_for_file: unused_field, unused_element, prefer_const_constructors

import 'dart:io';
import 'dart:math';
// ignore: depend_on_referenced_packages

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:aws_s3_upload/aws_s3_upload.dart';
import 'package:aws_s3_upload/enum/acl.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import 'package:megapixels_auditions/pages/audition.dart';

import 'package:razorpay_flutter/razorpay_flutter.dart';

import '../../models/ModelProvider.dart';
import '../Utils/variables.dart';

// ignore: camel_case_types
class auditionform extends StatefulWidget {
  const auditionform({Key? key}) : super(key: key);

  @override
  _auditionformState createState() => _auditionformState();
}

// ignore: camel_case_types
class _auditionformState extends State<auditionform> {
  TextEditingController name = TextEditingController();
  TextEditingController DOB = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController fatherspouse = TextEditingController();
  late String id;

  TextEditingController address = TextEditingController();
  DateTime selectedDate = DateTime.now();
  bool iduploaded = false;
  bool videouploaded = false;
  TextEditingController _dateController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> _formKey = GlobalKey();
  late File imageFile;
  bool isuploading = false;
  late File _video;
  late File _videoimage;
  final picker = ImagePicker();
  late Razorpay razorpay;

  @override
  void initState() {
    super.initState();
    final box = GetStorage();
    final em = box.read('email');
    if (em != null) {
      email.text = em;
    }

    razorpay = Razorpay();
    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlePaymentSuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlePaymentError);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handleExternalWallet);
  }

  @override
  void dispose() {
    super.dispose();
    razorpay.clear();
  }

  void openCheckout() async {
    var options = {
      // 'key': 'rzp_test_LxUDFfR6lAl0Zu',
      'key': 'rzp_live_MjEFbrMizt0yAb',
      'amount': 49900,
      'name': 'Megapixels',
      'description': 'Online form submission fee.',
      'retry': {'enabled': true, 'max_count': 1},
      'send_sms_hash': true,
      'prefill': {'contact': phone.text, 'email': email.text},
      'external': {'wallets': []}
    };

    try {
      razorpay.open(options);
    } catch (e) {
      print(e);
    }
  }

  void handlePaymentSuccess(PaymentSuccessResponse response) {
    showDialog(
        context: context,
        builder: (context) => Center(
              child: CircularProgressIndicator(color: Colors.red),
            ));
    uploadvideo();

    Fluttertoast.showToast(
        msg: "Payment Successful ", toastLength: Toast.LENGTH_LONG);
  }

  void handlePaymentError(PaymentFailureResponse response) {
    Navigator.pop(context);
    Fluttertoast.showToast(
        msg: "Payment failed, Try again later ",
        toastLength: Toast.LENGTH_LONG);
  }

  void handleExternalWallet(ExternalWalletResponse response) {
    Fluttertoast.showToast(
        msg: "EXTERNAL_WALLET: " + response.walletName!,
        toastLength: Toast.LENGTH_LONG);
  }

// This funcion will helps you to pick a Video File
  _pickVideo() async {
    XFile? pickedFile = await picker.pickVideo(source: ImageSource.gallery);
    _video = File(pickedFile!.path);

    if (_video != null) {
      setState(() {
        videouploaded = true;
      });
    }
  }

  _getFromGallery() async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
        iduploaded = true;
      });
    }
  }

  uploadvideotostorage(String id) async {
    try {
      logaction('uploading video');

      await Amplify.Storage.uploadFile(
        local: _video,
        key: 'audition/$id/video.mp4',
        options: S3UploadFileOptions(
          accessLevel: StorageAccessLevel.guest,
        ),
      );

      final url =
          'https://dt4hrfioc14lr.cloudfront.net/public/audition/$id/video.mp4';

      logaction(url);

      logaction('Successfully uploaded file: ');
      return url;
    } catch (e) {
      logaction(e);
    }
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
              labelStyle:
                  GoogleFonts.dmSans(color: Color.fromARGB(255, 180, 179, 179)),
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

  uploadimagestorage(String id) async {
    try {
      // returns url pointing to S3 file

      await Amplify.Storage.uploadFile(
        local: imageFile,
        key: 'audition/$id/id.mp4',
        options: S3UploadFileOptions(
          accessLevel: StorageAccessLevel.guest,
        ),
      );

      final url =
          'https://dt4hrfioc14lr.cloudfront.net/public/audition/$id/id.mp4';

      logaction(url);

      logaction('Successfully uploaded file: ');
      return url;
    } catch (e) {
      logaction(e);
    }
  }

  uploadvideo() async {
    setState(() {
      isuploading = true;
    });
    try {
      Random rnd = new Random();
// Define min and max value
      int min = 1723874, max = 9875984;

//Getting range
      int num = min + rnd.nextInt(max - min);
      var ids = num.toString();
      id = ids;

      String video = await uploadvideotostorage(ids);
      String image = await uploadimagestorage(ids);
      final item = Audition(
          applicationID: ids.toString(),
          time: TemporalDateTime.now().toString(),
          status: "Under Review",
          address: address.text,
          name: name.text,
          email: email.text,
          dob: TemporalDate.now().toString(),
          idcard: image,
          video: video,
          phone: phone.text,
          fatherspouse: fatherspouse.text,
          gender: gender.text,
          usersID: '');
      final request = ModelMutations.create(item);
      final response = await Amplify.API.mutate(request: request).response;

      final createdTodo = response.data;
      List items = [];
      items.add(createdTodo);
      final box = GetStorage();
      box.write('apps', items);
      box.write('email', createdTodo!.email);
      print('done');
      Navigator.pop(context);
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => submit(id)));
    } catch (e) {
      logaction(e);
    }
  }

  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1950, 8),
        lastDate: DateTime(2050));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        var date =
            "${picked.toLocal().day}/${picked.toLocal().month}/${picked.toLocal().year}";
        _dateController.text = date;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.red[900]),
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.arrow_back),
                        ),
                      ),
                    ),
                  ),
                  Spacer()
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 90),
                    child: Image.asset(
                      'assets/slogo.png',
                      scale: 3,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red[800]),
                      width: 200,
                      height: 35,
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Center(
                          child: Text(
                            'How to apply',
                            style: GoogleFonts.dmSans(
                                color: Colors.white,
                                fontSize: 18,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 5.4,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            '❒  Fill the details in the application form.\n❒  Upload your audition video.\n❒  Check details carefully before submitting.\n❒  Click on submit button and pay the fee.\n❒  Note-down your application ID for future communication.',
                            style: GoogleFonts.dmSans(
                                color: Colors.white,
                                fontSize: 15,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          _buildTextField('Full Name', 'Enter Your Name', name,
                              () {}, true),
                          _buildTextField(
                              'Father/Spouse', ' ', fatherspouse, () {}, true),
                          _buildTextField('Email', 'Enter Your Email', email,
                              () {}, email.text.isEmpty ? true : false),
                          _buildTextField(
                              'Phone', 'Enter Your Phone', phone, () {}, true),
                          _buildTextField('BirthDay', 'Enter your Birthday',
                              _dateController, () {
                            showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(1900),
                                    helpText: 'Select your Birthday',
                                    builder:
                                        (BuildContext context, Widget? child) {
                                      return Theme(
                                        data: ThemeData.dark(),
                                        child: child!,
                                      );
                                    },
                                    lastDate: DateTime.now())
                                .then((value) {
                              setState(() {
                                _dateController.text = value!.month.toString() +
                                    '/' +
                                    value!.day.toString() +
                                    '/' +
                                    value.year.toString();
                              });
                            });
                          }, false),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Gender',
                                    style: GoogleFonts.dmSans(
                                        color: Colors.white, fontSize: 15),
                                    textAlign: TextAlign.left),
                                Row(children: [
                                  OutlinedButton(
                                      onPressed: (() {
                                        setState(() {
                                          gender.text = 'Male';
                                        });
                                      }),
                                      child: Row(
                                        children: [
                                          SizedBox(width: 5),
                                          Icon(Icons.male, color: Colors.white),
                                          Text(
                                            'Male',
                                            style: GoogleFonts.dmSans(
                                                color: Colors.white),
                                          ),
                                          SizedBox(width: 5),
                                        ],
                                      ),
                                      style: OutlinedButton.styleFrom(
                                          backgroundColor: gender.text == 'Male'
                                              ? Colors.red
                                              : Colors.transparent,
                                          side:
                                              BorderSide(color: Colors.white))),
                                  SizedBox(width: 10),
                                  OutlinedButton(
                                      onPressed: (() {
                                        setState((() {
                                          gender.text = 'Female';
                                        }));
                                      }),
                                      child: Row(
                                        children: [
                                          SizedBox(width: 5),
                                          Icon(Icons.female,
                                              color: Colors.white),
                                          Text(
                                            'Female',
                                            style: GoogleFonts.dmSans(
                                                color: Colors.white),
                                          ),
                                          SizedBox(width: 5),
                                        ],
                                      ),
                                      style: OutlinedButton.styleFrom(
                                          backgroundColor:
                                              gender.text == 'Female'
                                                  ? Colors.red
                                                  : Colors.transparent,
                                          side:
                                              BorderSide(color: Colors.white)))
                                ]),
                              ],
                            ),
                          ),
                          _buildTextField('Address', 'Enter Your Address',
                              address, () {}, true),
                          Container(
                            margin: const EdgeInsets.all(20.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 10),
                            child: InkWell(
                              onTap: () => _getFromGallery(),
                              child: Stack(
                                children: [
                                  iduploaded
                                      ? Container(
                                          height: 200,
                                          child: Image.file(
                                            imageFile,
                                            fit: BoxFit.contain,
                                          ))
                                      : TextFormField(
                                          enabled: false,
                                          style: TextStyle(color: Colors.white),
                                          decoration: InputDecoration(
                                            labelStyle:
                                                TextStyle(color: Colors.white),
                                            border: OutlineInputBorder(),
                                            icon: Icon(
                                              Icons.camera_alt_rounded,
                                              color: Colors.white,
                                            ),
                                            labelText: iduploaded
                                                ? 'Remove/Upload again'
                                                : 'Upload ID/Address proof',
                                          ),
                                        ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              videouploaded
                                  ? Opacity(
                                      opacity: 0.5,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.grey[800],
                                          minimumSize: Size(
                                              MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  2.3,
                                              60),
                                        ),
                                        onPressed: () {
                                          // Validate returns true if the form is valid, or false otherwise.
                                          _pickVideo();
                                        },
                                        child: Row(
                                          children: [
                                            Text('Attached'),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Icon(Icons.video_collection)
                                          ],
                                        ),
                                      ),
                                    )
                                  : ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.red,
                                        minimumSize: Size(
                                            MediaQuery.of(context).size.width /
                                                2.3,
                                            60),
                                      ),
                                      onPressed: () {
                                        // Validate returns true if the form is valid, or false otherwise.
                                        _pickVideo();
                                      },
                                      child: Text('Attach Video')),
                              SizedBox(
                                width: 10,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.red,
                                  minimumSize: Size(
                                      MediaQuery.of(context).size.width / 2.3,
                                      60),
                                ),
                                onPressed: () {
                                  // Validate returns true if the form is valid, or false otherwise.
                                  if (_formKey.currentState!.validate()) {
                                    openCheckout();
                                    // uploadvideo();
                                  }
                                },
                                child: const Text("Submit"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class submit extends StatefulWidget {
  final String id;

  submit(
    this.id,
  );
  @override
  _submitState createState() => _submitState();
}

class _submitState extends State<submit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                'https://cdn.discordapp.com/attachments/945521532879372358/974752780445155408/icons8-check-circle.gif',
                scale: 1,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'You have successfully submitted the application.\nApplication ID: ${widget.id} ',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Task {
  String name;

  Task({required this.name});
}
