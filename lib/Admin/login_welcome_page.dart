import 'package:flutter/material.dart';
import 'package:mamakmajuwebapp/Admin/login_page.dart';
import 'package:mamakmajuwebapp/Constant/color.dart';
import 'package:mamakmajuwebapp/Constant/rounded_button.dart';
import 'package:mamakmajuwebapp/WelcomePage/background.dart';

class LoginWelcomePage extends StatefulWidget {
  @override
  _LoginWelcomePageState createState() => _LoginWelcomePageState();
}

class _LoginWelcomePageState extends State<LoginWelcomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.45),
            SizedBox(height: size.height * 0.02),
            RoundedButton(
              text: "SIGN IN",
              textColor: Colors.black,
              press: () {Navigator.push(context,
                MaterialPageRoute(builder: (context
                    )
                {return LoginPage();
                },
                ),
              );
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryColor,
              textColor: Colors.black,
              press: () {Navigator.push(context,
                MaterialPageRoute(builder: (context
                    )
                {return;
                },
                ),
              );
              },
            ),
          ],
        ),
      ),
    );
  }
}
