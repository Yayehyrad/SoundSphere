import 'package:flutter/material.dart';
import 'package:soundsphere/common/widgets/appbar/basic_app_bar.dart';
import 'package:soundsphere/common/widgets/button/basic_app_btn.dart';
import 'package:soundsphere/core/configs/assets/app_assets.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar( text: Image.asset(AppAssets.logo , height: 120 , width: 120,),),
      bottomNavigationBar: _signinText(context),
      body: 
      
      Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [ 
            _registerText(),
            SizedBox(height: 50,),
            _fullNameField(context),
            SizedBox(height: 20,),
            _emailField(context),
            SizedBox(height: 20,),
            _passwordField(context),
            SizedBox(height: 20,),
            BasicAppBtn(onPressed: (){}, title: "Create Account")
        
          ],
        ),
      ),
    );
  }

  Widget _registerText(){
    return Text("Register" , style:TextStyle(
      fontWeight : FontWeight.bold,
      fontSize : 26
    ) , textAlign  : TextAlign.center);
  }

  Widget _fullNameField(BuildContext context){
    return TextField(
      decoration  : InputDecoration(
        hintText : 'Full Name'
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme
      )
    );
  }

  Widget _emailField(BuildContext context){
    return TextField(
      decoration: InputDecoration(hintText: "Email").applyDefaults(
        Theme.of(context).inputDecorationTheme
      ),
    );
  }
  Widget _passwordField(BuildContext context){
    return TextField(
      decoration: InputDecoration(
        hintText: "Password" 
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }
  Widget _signinText(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Do you have an account ?" ,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14
          ),
        ) , 
        TextButton(onPressed: (){}, child: Text("sign in"))
      ],
    );
  }
}