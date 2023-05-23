import 'package:flutter/material.dart';

class Navigation{
  static navigatorTo(BuildContext context, Widget widget) {
    return Navigator.push(
        context, MaterialPageRoute(builder: (context) => widget));
  }

  static navigatorAndReplacement(BuildContext context, Widget widget) {
    return Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => widget));
  }

  static navigatorAndFinished(BuildContext context, Widget widget) {
    return Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => widget),
      ModalRoute.withName('/aa'),
    );
  }
}