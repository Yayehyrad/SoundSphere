import 'package:flutter/material.dart';
import 'package:soundsphere/common/widgets/appbar/basic_app_bar.dart';
import 'package:soundsphere/common/widgets/button/basic_app_btn.dart';
import 'package:soundsphere/core/configs/assets/app_assets.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

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
            _logInText(),
            const SizedBox(height: 50,),
            _emailField(context),
            const SizedBox(height: 20,),
            _passwordField(context),
            const SizedBox(height: 20,),
            BasicAppBtn(onPressed: (){}, title: "Login")
          ],
        ),
      ),
    );
  }

  Widget _logInText(){
    return const Text("Login" , style:TextStyle(
      fontWeight : FontWeight.bold,
      fontSize : 26
    ) , textAlign  : TextAlign.center);
  }

  Widget _emailField(BuildContext context){
    return TextField(
      decoration: const InputDecoration(hintText: "Email").applyDefaults(
        Theme.of(context).inputDecorationTheme
      ),
    );
  }
  Widget _passwordField(BuildContext context){
    return TextField(
      decoration: const InputDecoration(
        hintText: "Password" 
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }
  Widget _signinText(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have an account ?" ,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14
          ),
        ) , 
        TextButton(onPressed: (){}, child: const Text("Register"))
      ],
    );
  }
}