import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:soundsphere/core/configs/assets/app_assets.dart';
import 'package:soundsphere/presentation/pages/get_started.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    redirect();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold( body:  Center(
      child: Container(
        child: Image.asset(
          AppAssets.logo
        )
      ),
    ));
  }
  Future<void> redirect() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacement(context, 
    MaterialPageRoute(builder : (context) =>GetStarted()  ));
  }
}
