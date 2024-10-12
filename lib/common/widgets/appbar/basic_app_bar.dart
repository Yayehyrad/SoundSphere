import 'package:flutter/material.dart';
import 'package:soundsphere/common/helper/isDark.dart';
import 'package:soundsphere/presentation/pages/signin_up.dart';

class BasicAppBar extends StatelessWidget implements PreferredSize{
  const BasicAppBar({super.key , this.text });
  
  final Widget ? text ;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: text ?? const Text("") ,
      centerTitle: true,
      leading: IconButton(onPressed: (){
        Navigator.pop(context);
      }, icon: Container(
        decoration: BoxDecoration(
          color: context.isDark() ?Colors.white.withOpacity(0.1): Colors.black.withOpacity(0.03) ,
          shape: BoxShape.circle
        ),
        width: 60,
        height: 60,
        child: Icon(
          Icons.arrow_back_ios_new,
          size: 18,
          color: context.isDark() ? Colors.white : Colors.black,
        ),
      )
      )
      ,
    );
  }
  
  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}