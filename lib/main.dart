import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:megapixels_auditions/pages/EnterEmail.dart';
import 'package:megapixels_auditions/pages/audition.dart';

import 'Utils/variables.dart';
import 'amplifyconfiguration.dart';
import 'models/ModelProvider.dart';

bool isEmailEntered = false;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _configureAmplify().then((value) async {
    print('amplify configured');
    final hh = await Amplify.Auth.fetchAuthSession();

    try {
      if (hh.isSignedIn == false) {
        await Amplify.Auth.signIn(
          username: 'megapixels@gmail.com',
          password: 'Megapixels@123',
        );
      }
    } catch (e) {
      logaction(e);
    }
  });
  runApp(const MyApp());
}

Future<void> _configureAmplify() async {
  final auth = AmplifyAuthCognito();
  // final data =
  //     AmplifyDataStore(modelProvider: ModelProvider.instance, syncExpressions: [
  //   DataStoreSyncExpression(Oye.classType, () => Oye.ID.eq(1)),
  //   DataStoreSyncExpression(
  //       CreatorAccount.classType, () => CreatorAccount.ID.eq(1)),
  //   DataStoreSyncExpression(Users.classType, () => Users.ID.eq(1)),
  //   DataStoreSyncExpression(Subscribe.classType, () => Subscribe.ID.eq(1)),
  //   DataStoreSyncExpression(Con.classType, () => Oye.ID.eq(1)),
  //   DataStoreSyncExpression(Oye.classType, () => Oye.ID.eq(1)),
  //   DataStoreSyncExpression(Oye.classType, () => Oye.ID.eq(1)),
  // ]);
  final api = AmplifyAPI(modelProvider: ModelProvider.instance);
  final storage = AmplifyStorageS3();

  try {
    await Amplify.addPlugins([auth, api, storage]);

    await Amplify.configure(amplifyconfig);
  } on AmplifyAlreadyConfiguredException {
    // do something
    logaction('lol');
  } catch (e) {
    print(e);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Auditions',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.

          ),
      home: GetStorage().read('email') != null
          ? const AuditionPage()
          : const EnterEmail(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
