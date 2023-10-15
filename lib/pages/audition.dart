// ignore_for_file: prefer_const_constructors

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_storage/get_storage.dart';
import 'package:megapixels_auditions/pages/audition_form.dart';

import 'package:shimmer/shimmer.dart';

import '../Utils/variables.dart';
import '../models/ModelProvider.dart';

class AuditionPage extends StatefulWidget {
  const AuditionPage({Key? key}) : super(key: key);

  @override
  _AuditionPageState createState() => _AuditionPageState();
}

class _AuditionPageState extends State<AuditionPage> {
  final controller = ScrollController();
  int index = 0;

  bool _isLoaded = false;
  final List<String> imageList = [
    'https://voswuyfnhqbjxqaudabm.supabase.co/storage/v1/object/public/thumbnails/audition/1.jpg',
    'https://voswuyfnhqbjxqaudabm.supabase.co/storage/v1/object/public/thumbnails/audition/2.jpg',
    'https://voswuyfnhqbjxqaudabm.supabase.co/storage/v1/object/public/thumbnails/audition/3.jpg'
  ];
  final List<String> Auditions = [
    'https://cdn.discordapp.com/attachments/926965175125413898/999621748980985928/IMG_20220721_154848_291.jpg',
    'https://cdn.discordapp.com/attachments/926965175125413898/999621748767084544/IMG_20220721_154851_360.jpg',
    'https://cdn.discordapp.com/attachments/926965175125413898/999621749278773258/IMG_20220721_154844_524.jpg',
    'https://cdn.discordapp.com/attachments/926965175125413898/999621749509472306/IMG_20220721_154840_322.jpg'
  ];
  final List<String> Auditionslinks = [
    'https://youtu.be/EYQGy6aLzQg',
    'https://youtu.be/E07LviJVhcY',
    'https://youtu.be/fCpqZ9oKqkI',
    'https://youtu.be/iuXqf52kh-k'
  ];
  final List<String> candidates = [
    'https://cdn.discordapp.com/attachments/926965175125413898/999280487317123083/IMG_20220720_171320_296.jpg',
    'https://cdn.discordapp.com/attachments/926965175125413898/999280487564591215/IMG_20220720_171315_888.jpg',
    'https://cdn.discordapp.com/attachments/926965175125413898/999280487774294036/IMG_20220720_171312_069.jpg',
    'https://cdn.discordapp.com/attachments/926965175125413898/999280487958851636/IMG_20220720_171308_438.jpg'
  ];
  final List<String> candidateslink = [
    'https://youtu.be/DGkE_lYWOcY',
    'https://youtu.be/IhFd9cxXTok',
    'https://youtu.be/LxAk2ok6s2E',
    'https://youtu.be/AfFn9qf1pAw'
  ];
  FocusNode? myFocusNode;
  bool activeSearch = false;

  // ignore: unused_field

  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 1000), () {
      if (mounted)
        setState(() {
          _isLoaded = true;
        });
    });
    final box = GetStorage();
    final data = box.read('email');
    if (data != null) {
      getdata();
    }
    super.initState();

    myFocusNode = FocusNode();
  }

  getdata() async {
    final box = GetStorage();
    final data = box.read('email');
    final request =
        ModelQueries.list(Audition.classType, where: Audition.EMAIL.eq(data));
    final response = await Amplify.API.query(request: request).response;
    logaction('Audition data fetched' + response.data!.items.toString());
    if (response.data != null) {
      auditiondata.addAll(response.data!.items);
    }
    if (mounted)
      setState(() {
        auditiondata.refresh();
      });
  }

  bool isDark = true;

  Shimmer getShimmerloading() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[900]!,
      highlightColor: Colors.grey[700]!,
      child: Container(
        color: Colors.black,
      ),
    );
  }

  Widget buildList() => ListView.builder(
        controller: controller,
        itemCount: 50,
        itemBuilder: (context, index) => ListTile(
          title: Center(
            child: Text(
              '${index + 1}',
              style: TextStyle(fontSize: 32),
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark ? Colors.black : Colors.white,
      body: SafeArea(
          child: Scrollbar(
              child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                padding:
                    const EdgeInsets.symmetric(horizontal: 90, vertical: 20),
                color: isDark ? Colors.black : Colors.black,
                child: Image.asset(
                  'assets/slogo.png',
                  scale: 3,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  child: _isLoaded
                      ? CarouselSlider(
                          items: imageList
                              .map((e) => AspectRatio(
                                    aspectRatio: 16 / 9,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: CachedNetworkImage(
                                            imageUrl: e,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            progressIndicatorBuilder: (context,
                                                    url, downloadProgress) =>
                                                Center(
                                                  child:
                                                      CircularProgressIndicator(
                                                          color: Colors.red,
                                                          strokeWidth: 5,
                                                          value:
                                                              downloadProgress
                                                                  .progress),
                                                ),
                                            errorWidget:
                                                (context, url, error) =>
                                                    Icon(Icons.error),
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                  ))
                              .toList(),
                          options: CarouselOptions(
                            enlargeCenterPage: true,
                            enableInfiniteScroll: true,
                            autoPlay: true,
                            initialPage: 0,

                            // enlargeCenterPage: true,

                            aspectRatio: 16 / 9,
                            // enlargeStrategy: CenterPageEnlargeStrategy.height,
                            autoPlayInterval: Duration(seconds: 2),
                            scrollDirection: Axis.horizontal,

                            viewportFraction: 0.96,
                            height: 240.0,
                          ),
                        )
                      : getShimmerloading()),
              SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                    padding: const EdgeInsets.only(
                        top: 10, left: 20, right: 20, bottom: 10),
                    child: _isLoaded
                        ? Row(
                            children: [
                              Text(
                                'Auditions',
                                textAlign: TextAlign.left,
                                style: mystyle(
                                  15,
                                  isDark ? Colors.white : Colors.black,
                                ),
                              ),
                              Spacer(),
                              InkWell(
                                onTap: () {
                                  final link = Uri.parse(
                                      'https://youtube.com/playlist?list=PL4KrzLSRdy-3kI4KMfXZ6NmT4xOI3tRjS');
                                  launchlinks(context, link, link);
                                },
                                child: Text(
                                  'See More',
                                  textAlign: TextAlign.left,
                                  style: mystyle(
                                      15,
                                      isDark
                                          ? Color.fromARGB(255, 201, 2, 2)
                                          : Colors.red,
                                      FontWeight.w500),
                                ),
                              ),
                            ],
                          )
                        : Container(
                            height: 20,
                            width: 150,
                            child: getShimmerloading())),
              ),
              Container(
                color: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: MediaQuery.of(context).size.height / 8,
                width: MediaQuery.of(context).size.width,
                child: _isLoaded
                    ? ListView.builder(
                        itemCount: Auditions.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Card(
                            color: Colors.black,
                            child: InkWell(
                              onTap: () => launchlinks(
                                  context,
                                  Uri.parse(Auditionslinks[(index)]),
                                  Uri.parse(Auditionslinks[index])),
                              child: AspectRatio(
                                aspectRatio: 14 / 9,
                                child: Container(
                                  padding: const EdgeInsets.all(0.1),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: CachedNetworkImage(
                                        imageUrl: Auditions[index],
                                        progressIndicatorBuilder: (context, url,
                                                downloadProgress) =>
                                            Center(
                                              child: CircularProgressIndicator(
                                                  color: Colors.red,
                                                  strokeWidth: 5,
                                                  value: downloadProgress
                                                      .progress),
                                            ),
                                        errorWidget: (context, url, error) =>
                                            Icon(Icons.error),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      )
                    : Container(
                        child: ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Card(
                            color: Colors.black,
                            child: AspectRatio(
                              aspectRatio: 14 / 9,
                              child: Container(
                                padding: const EdgeInsets.all(0.1),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: getShimmerloading(),
                                ),
                              ),
                            ),
                          );
                        },
                      )),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10, left: 20, bottom: 10, right: 20),
                  child: _isLoaded
                      ? Row(
                          children: [
                            Text(
                              'Selected Candidates',
                              textAlign: TextAlign.left,
                              style: mystyle(15, Colors.white),
                            ),
                            Spacer(),
                            InkWell(
                              onTap: () {
                                final link = Uri.parse(
                                    'https://youtube.com/playlist?list=PL4KrzLSRdy-18J8TDaSZt1LUOZcl6o-Px');
                                launchlinks(context, link, link);
                              },
                              child: Text(
                                'See More',
                                textAlign: TextAlign.left,
                                style: mystyle(
                                    15,
                                    Color.fromARGB(255, 201, 2, 2),
                                    FontWeight.w500),
                              ),
                            ),
                          ],
                        )
                      : Container(
                          height: 20, width: 150, child: getShimmerloading()),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: MediaQuery.of(context).size.height / 8,
                width: MediaQuery.of(context).size.width,
                child: _isLoaded
                    ? ListView.builder(
                        itemCount: candidates.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Card(
                            color: Colors.black,
                            child: InkWell(
                              onTap: () => launchlinks(
                                  context,
                                  Uri.parse(candidateslink[index]),
                                  Uri.parse(candidateslink[index])),
                              child: AspectRatio(
                                aspectRatio: 14 / 9,
                                child: Container(
                                  padding: const EdgeInsets.all(0.1),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: CachedNetworkImage(
                                        imageUrl: candidates[index],
                                        progressIndicatorBuilder: (context, url,
                                                downloadProgress) =>
                                            Center(
                                              child: CircularProgressIndicator(
                                                  color: Colors.red,
                                                  strokeWidth: 5,
                                                  value: downloadProgress
                                                      .progress),
                                            ),
                                        errorWidget: (context, url, error) =>
                                            Icon(Icons.error),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      )
                    : Container(
                        child: ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Card(
                            color: Colors.black,
                            child: AspectRatio(
                              aspectRatio: 14 / 9,
                              child: Container(
                                padding: const EdgeInsets.all(0.1),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: getShimmerloading(),
                                ),
                              ),
                            ),
                          );
                        },
                      )),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2.1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateColor.resolveWith(
                                (states) => Color.fromARGB(255, 156, 39, 31)),
                            elevation: MaterialStateProperty.all(0)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => auditionform()));
                        },
                        child: FittedBox(
                          child: Text(
                            'Apply For Audition',
                            style: mystyle(15, Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2.1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateColor.resolveWith(
                                (states) => Color.fromARGB(255, 156, 39, 31)),
                            elevation: MaterialStateProperty.all(0)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => auditionform()));
                        },
                        child: FittedBox(
                          child: Text(
                            'Apply For Form',
                            style: mystyle(15, Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              application(),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ))),
    );
  }

  // Stream<QuerySnapshot<Audition>> observeAudition() {
  //   return Amplify.DataStore.observeQuery(Audition.classType,
  //       where: Audition.USERSID.eq(global_id));
  // }
  RxList auditiondata = [].obs;

  Widget application() {
    if (auditiondata.isEmpty) {
      return Center(
        child: Text(
          'You have not applied for audition yet',
          style: mystyle(15, Colors.white),
        ),
      );
    }
    return Obx(() => Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 3,
          child: ListView.builder(
              itemCount: auditiondata.length,
              itemBuilder: (context, Index) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(10)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Your application',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w500)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              if (auditiondata.first.status == 'Under Review')
                                Icon(
                                  Icons.pending_actions,
                                  size: 20,
                                  color: Colors.amber,
                                )
                              else if (auditiondata.first.status == 'Approved')
                                Icon(
                                  Icons.done_rounded,
                                  size: 20,
                                  color: Colors.green,
                                )
                              else if (auditiondata.first.status == 'Rejected')
                                Icon(
                                  Icons.cancel,
                                  size: 20,
                                  color: Colors.red,
                                ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(auditiondata.first.status!,
                                  style: TextStyle(
                                      color: Colors.white54,
                                      fontSize: 11,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.w500)),
                            ],
                          )
                        ],
                      ),
                      Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Submission ID',
                              style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 11,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w500)),
                          Text(auditiondata.first.applicationID.toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ],
                  ),
                );
              }),
        ));
  }
}
