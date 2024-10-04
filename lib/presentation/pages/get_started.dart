import 'package:flutter/material.dart';
import 'package:soundsphere/common/widgets/button/basic_app_btn.dart';
import 'package:soundsphere/core/configs/assets/app_assets.dart';
import 'package:soundsphere/core/configs/themes/app_color.dart';
import 'package:soundsphere/presentation/pages/choose_mode.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Stack(
        children : [
           Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 50
            ),
            decoration : BoxDecoration(
              image : DecorationImage(
                fit : BoxFit.cover ,
                image : AssetImage(
                  AppAssets.gettingStartedImage
                )
              )
            ),
            
           ),
           Container(
            color : Colors.black.withOpacity(0.2)
           ) , 
           Padding(
            padding: EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 50
           ),
           child: Column(
              children: [
                 Align(
                  alignment: Alignment.center,
                  child: Hero(tag: 'logo', child: 
                  
                  Image.asset(
                    AppAssets.logo
                  ),
                 ),),
              const Spacer(),
              const Text("Enjoy Listning To Music" , style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white
              ),),
              const SizedBox(height: 21,),
              const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam." , style: TextStyle(
                fontSize: 13,
                color: AppColor.gray,
                fontWeight: FontWeight.w500
              ),textAlign: TextAlign.center,),
              const SizedBox(height: 21,),
              BasicAppBtn(onPressed: (){
                print("hi there");
                Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=> ChooseMode()));
              }, title: "Get started" , height:70)
              ],
            ),
           )
        ]
      )
    );
  }
}