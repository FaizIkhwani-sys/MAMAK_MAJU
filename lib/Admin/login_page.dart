import 'package:flutter/material.dart';
import 'package:mamakmajuwebapp/Constant/background.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: 'ENTER USERNAME'),
              style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
            ),
          )
        ],
      ),
    );
  }
}
