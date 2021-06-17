import 'package:flutter/material.dart';
import 'package:payment_app/views/components/buttons/ws_button.dart';
import 'package:payment_app/views/components/inputs/ws_input.dart';
import 'package:payment_app/views/pages/home/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  Color primaryColor = new Color(0xFF0A235B);
  TextEditingController _email = new TextEditingController();
  TextEditingController _pass = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Padding(
        padding: const EdgeInsets.all(16),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            new Spacer(),
            new Text(
              'Log In',
              style: new TextStyle(
                color: primaryColor,
                fontSize: 22,
                fontWeight: FontWeight.w700
              ),
            ),
            new SizedBox(height: 25),
            new WsInput(
              text: 'Email',
              keyboardType: TextInputType.emailAddress,
              controller: _email,
              icon: Icons.alternate_email_rounded
            ),
            new SizedBox(height: 20),
            new WsInput(
              text: 'Password',
              keyboardType: TextInputType.text,
              controller: _pass,
              icon: Icons.lock_outline_rounded,
              isPass: true,
            ),
            new SizedBox(height: 60),
            new WsButton(
              label: 'Log In',
              onTap: () => Navigator.of(context).pushReplacement(
                new MaterialPageRoute(builder: (builder) => new HomePage())
              )
            ),
            new SizedBox(height: 20),
            new Text(
              'Nice to have you back, it\'s time to start shopping, thousands of stores are waiting for you',
              textAlign: TextAlign.center,
              style: new TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.w700
              ),
            ),
            new Spacer(),
            new Center(
              child: Text.rich(
                new TextSpan(
                  text: 'Do you have an account? ',
                  style: new TextStyle(
                    color: primaryColor,
                    fontSize: 13,
                  ),
                  children: [
                    new TextSpan(
                      text: 'Sign Up',
                      style: new TextStyle(
                        color: primaryColor,
                        fontSize: 13,
                        fontWeight: FontWeight.bold
                      )
                    )
                  ]
                )
              ),
            ),
            new SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}