import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:level_solo/routes.dart';
import 'package:routefly/routefly.dart';

import '../injector/actions/home_action.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    fecthDubladosAnimes();
    fecthTopAnimes();
    fecthUpdatedAnimes();
    fecthTendingAnimes();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.fadeIn(
      animationDuration: const Duration(milliseconds: 500),
      backgroundColor: Colors.black,
      onInit: () {
        debugPrint("On Init");
      },
      onEnd: () {
        debugPrint("On End");
        Routefly.navigate(routePaths.home);
      },
      childWidget: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.amberAccent,
        ),

        ///Image.asset("assets/icons/ic_launcher.png"),
      ),
      onAnimationEnd: () => debugPrint("On Fade In End"),
      //  nextScreen: const StartPage(),
    );
  }
}
