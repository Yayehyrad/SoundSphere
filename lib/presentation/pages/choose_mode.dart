import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:soundsphere/common/widgets/button/basic_app_btn.dart';
import 'package:soundsphere/core/configs/assets/app_assets.dart';
import 'package:soundsphere/main.dart';
import 'package:soundsphere/presentation/bloc/theme-cubit.dart';
import 'package:soundsphere/presentation/pages/signin_up.dart';

class ChooseMode extends StatelessWidget {
  const ChooseMode({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(children: [ Container(
        decoration: BoxDecoration(
          image: DecorationImage(
          fit:BoxFit.fill,  
          image: 
           AssetImage(
            AppAssets.chooseMode
           )
          )
        ),
      ),
      Container(
        color: Colors.black.withOpacity(0.2),
      ) ,
      Padding(
        padding: EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 50,
        
      ),
      child:  Column(
        children: [
          Hero(tag: 'logo', child: 
          Image.asset(
            AppAssets.logo
          ) ),
          Spacer(),
              const Text("Choose Mode" , style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white
              ),),
          const SizedBox(height: 21,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BtnChoose(svg: AppAssets.moon, opacity: 1 , text : "Dark Mood")
              ,
              SizedBox(width: 20)
              ,
              BtnChoose(svg: AppAssets.sun, opacity: 0 , text: "Light Mood",)
              
            ],
          ),
          const SizedBox(height: 42),
          BasicAppBtn(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> SigninUp() ));
          }, title:"Choose Mode" , height: 70 )
        ],
      ),
      )
     
      ]

      )
    );
  }
}
class BtnChoose extends StatelessWidget {
  const BtnChoose({required this.svg , required this.opacity ,required this.text});
  final String svg;
  final double opacity;
  final String text;
  

  @override
  Widget build(BuildContext context) {

    return    Column(children: [
             ClipOval(
              child: 
              BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10 , sigmaY: 10) , 
              child: 
              FloatingActionButton(onPressed: (){
                context.read<ThemeCubit>().updateTheme(text == "light" ? ThemeMode.light : ThemeMode.dark);
              } , 
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)) , 
              child: SvgPicture.asset(svg),
              backgroundColor: Colors.black.withOpacity(opacity),
              ))),
              SizedBox(height: 2),
              Text(text , style: 
              const TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 12,
                color: Colors.white70              ),),
      
    ],);
    
    
  }
}