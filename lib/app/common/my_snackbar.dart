import 'package:flutter/material.dart';


void showSnackbar(
  BuildContext context,
  String message,{
    Color color= Colors.red,
  }
  ) {
  ScaffoldMessenger.of(context).showSnackBar(
     SnackBar(
      content: Text(message),
      backgroundColor: color,
      duration: Duration(seconds: 3),
      behavior: SnackBarBehavior.floating,
      
    ),
  );
}
