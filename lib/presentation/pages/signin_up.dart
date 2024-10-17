import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:soundsphere/common/helper/isDark.dart';
import 'package:soundsphere/common/widgets/appbar/basic_app_bar.dart';
import 'package:soundsphere/common/widgets/button/basic_app_btn.dart';
import 'package:soundsphere/core/configs/assets/app_assets.dart';
import 'package:soundsphere/core/configs/themes/app_color.dart';
import 'package:soundsphere/presentation/pages/signin.dart';
import 'package:soundsphere/presentation/pages/signup.dart';

class SigninUp extends StatelessWidget {
  const SigninUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BasicAppBar(),
          Align(alignment: Alignment.topRight,
          child: SvgPicture.asset(
            AppAssets.patternUp
          ),
          ) ,
          Align(alignment: Alignment.bottomRight, 
          child: SvgPicture.asset(AppAssets.patternDown) ,) ,
          Align(alignment:  Alignment.bottomLeft, 
          child: Image.asset(AppAssets.signinUp)
          ),
          Align(alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40 ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Image.asset(AppAssets.logo),
                  const SizedBox(height: 55,),
                  const Text('Enjoy Listening to music' , 
                   style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                   ),),
                   const SizedBox(height: 21,),
                   const Text('Spotify is a proprietary Swedish audio streaming and media services provider', style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: AppColor.gray,
                   ),
                   textAlign: TextAlign.center,
                   ) ,
                   const SizedBox(height: 30,) ,
                   Row(
                    children: [
                      Expanded( flex:1 , child:  BasicAppBtn(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Signup()));
                      } , title: 'signup')),
                      const SizedBox(height: 20,),
                      Expanded(flex:1 , child: 
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: 
                        (BuildContext context)=>Signin()
                        ));
                      }, child: Text("signin" ,style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16 ,
                        color:  context.isDark() ? Colors.white : Colors.black
                      ),))
                      )
                      
                    ],
                   )
              ],
            ),
          ) 
          ,)
        ],
      )
    );
  }
}