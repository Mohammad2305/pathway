import 'package:flutter/material.dart';

void pushTo(BuildContext context, Widget nextScreen){
  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>nextScreen));
}

void pushReplacementTo(BuildContext context, Widget nextScreen){
  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>nextScreen));
}

void popBack(BuildContext context){
  Navigator.of(context).pop();
}