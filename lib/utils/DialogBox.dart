import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DialogBox{


  static toastMessage(String message){
    Fluttertoast.showToast(msg: message,

        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  static void flushBarErrorMessage(String message,BuildContext context){

    showFlushbar(context: context, flushbar: Flushbar(
      message: message,
      forwardAnimationCurve: Curves.decelerate,
      backgroundColor: Colors.red,
      title: "SAD",
      messageColor: Colors.black,
      reverseAnimationCurve: Curves.easeInOut,
      duration: Duration(seconds: 5),
    )..show(context));

  }


  static snackBar(String message , BuildContext context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          backgroundColor: Colors.red,
          content: Text(message))
    );

  }
}