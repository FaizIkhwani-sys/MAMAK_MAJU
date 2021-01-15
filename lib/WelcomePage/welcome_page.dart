import 'package:flutter/material.dart';
import 'package:mamakmajuwebapp/Admin/login_welcome_page.dart';
import 'package:mamakmajuwebapp/Constant/color.dart';
import 'package:mamakmajuwebapp/Constant/rounded_button.dart';
import 'package:mamakmajuwebapp/Customers/Orders/dashboardpage.dart';
import 'package:mamakmajuwebapp/WelcomePage/background.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
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
              text: "ADMIN",
              textColor: Colors.black,
              press: () {Navigator.push(context,
                MaterialPageRoute(builder: (context
                    )
                {return LoginWelcomePage();
                },
                ),
              );
              },
            ),
            RoundedButton(
              text: "CUSTOMERS",
              color: kPrimaryColor,
              textColor: Colors.black,
              press: () {Navigator.push(context,
                MaterialPageRoute(builder: (context
                    )
                {return DashboardPage();
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
