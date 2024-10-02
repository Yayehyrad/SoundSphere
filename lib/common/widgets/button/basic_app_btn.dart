import 'package:flutter/material.dart';

class BasicAppBtn extends StatelessWidget {
  const BasicAppBtn({required this.onPressed , required this.title , this.height=70});
  final VoidCallback onPressed;
  final String title;
  final double height ;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, 
    style: ElevatedButton.styleFrom(
      minimumSize: Size.fromHeight(height),
    ),
    child: Text(
      this.title,
      style: TextStyle(
        color: Colors.white
      ),
    ));
  }
}