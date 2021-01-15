import 'package:flutter/material.dart';
import 'package:mamakmajuwebapp/WelcomePage/background.dart';

class SubmitOrder extends StatefulWidget {
  @override
  _SubmitOrderState createState() => _SubmitOrderState();
}

class _SubmitOrderState extends State<SubmitOrder> {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Text('YOUR ORDER IS BEING PROCESSED',
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 27.0,
          color: Colors.white,
          decoration: TextDecoration.none,
        ),),
    );
  }
}
