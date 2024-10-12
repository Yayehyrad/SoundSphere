import 'package:flutter/material.dart';
import 'package:soundsphere/common/widgets/appbar/basic_app_bar.dart';
import 'package:soundsphere/core/configs/assets/app_assets.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar( text: Image.asset(AppAssets.logo , height: 120 , width: 120,),),
      body: Column(
        children: [ 
          

        ],
      ),
    );
  }
}