import 'package:flutter/material.dart';
import 'package:soundsphere/core/configs/assets/app_assets.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Stack(
        children : [
           Container(
            decoration : BoxDecoration(
              image : DecorationImage(
                fit : BoxFit.cover ,
                image : AssetImage(
                  AppAssets.gettingStartedImage
                )
              )
            ),
            child: Column(
              children: [
                 Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    AppAssets.logo
                  ),
                 ),
              Spacer(),
              const Text("Enjoy Listning To Music" , style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white
              ),),
              SizedBox()
              ],
            ),
           ),
           Container(
            color : Colors.black.withOpacity(0.1)
           )
        ]
      )
    );
  }
}