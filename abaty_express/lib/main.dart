import 'dart:async';

import 'package:abaty_express/constants/colors.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
// ignore: depend_on_referenced_packages
import 'package:page_transition/page_transition.dart';

import 'pages/skeleton.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarBrightness: Brightness.dark, // set status bar text color to white
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    precacheImage(const AssetImage("assets/images/abaty.png"), context);
    precacheImage(const AssetImage("assets/images/tv.jpg"), context);
    precacheImage(const AssetImage("assets/images/phone.jpg"), context);
    precacheImage(const AssetImage("assets/images/m_shirt.jpg"), context);
    precacheImage(const AssetImage("assets/images/f_shirt.jpg"), context);
    MaterialColor mycolor = MaterialColor(
      const Color.fromRGBO(216, 194, 0, 1).value,
      const <int, Color>{
        50: Color.fromRGBO(216, 194, 0, 0.1),
        100: Color.fromRGBO(216, 194, 0, 0.2),
        200: Color.fromRGBO(216, 194, 0, 0.3),
        300: Color.fromRGBO(216, 194, 0, 0.4),
        400: Color.fromRGBO(216, 194, 0, 0.5),
        500: Color.fromRGBO(216, 194, 0, 0.6),
        600: Color.fromRGBO(216, 194, 0, 0.7),
        700: Color.fromRGBO(216, 194, 0, 0.8),
        800: Color.fromRGBO(216, 194, 0, 0.9),
        900: Color.fromRGBO(216, 194, 0, 1),
      },
    );
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: mycolor,
        ),
        debugShowCheckedModeBanner: false,
        home: const SplashScreen());
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        backgroundColor: backgroundColor,
        splash: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.width * 0.15),
                child: Image.asset(
                  "assets/images/abaty.png",
                  height: 75,
                  width: MediaQuery.of(context).size.width * 0.85,
                )),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.3,
            ),
            SpinKitThreeBounce(
              color: appColor,
              size: 24,
            )
          ],
        ),
        nextScreen: const Skeleton(title: "Title"),
        splashIconSize: MediaQuery.of(context).size.width * 1.2,
        pageTransitionType: PageTransitionType.rightToLeft,
      ),
    );
  }
}

class DelayedDisplay extends StatefulWidget {
  final Widget initialChild, finalChild;

  const DelayedDisplay(
      {Key? key, required this.initialChild, required this.finalChild})
      : super(key: key);
  @override
  State<DelayedDisplay> createState() => _DelayedDisplayState();
}

class _DelayedDisplayState extends State<DelayedDisplay> {
  bool switchDisplay = false;
  @override
  void initState() {
    late Timer timer;
    timer = Timer(
      const Duration(seconds: 6),
      () {
        setState(() => switchDisplay = true);
        timer.cancel();
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return switchDisplay ? widget.finalChild : widget.initialChild;
  }
}
