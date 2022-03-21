import 'dart:ffi';

import 'package:flutter/material.dart';


class GradientButton extends StatelessWidget {
  String title;
  final VoidCallback onPressed;
GradientButton({Key? key, required this.title,required this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 1),

            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(child: Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
            decoration:  ShapeDecoration(

              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              gradient:
              const LinearGradient(colors: [Color(0xffe09a61), Color(0xFFff00be)]),
            ),
          ),
        ],
      ),
    );
  }
}
