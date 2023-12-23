import 'package:flexyatra/Presentations/signupPage.dart';
import 'package:flexyatra/resuseable_widgets/resuseable_widget.dart';
import 'package:flexyatra/utils/gradientcolors_utils.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            hexStringToColor("cb2b93"),
            hexStringToColor("9546c4"),
            hexStringToColor("5e61f4"),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(360)),
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  20, MediaQuery.of(context).size.height * 0.2, 20, 0),
              child: Column(
                children: <Widget>[
                  logoWidget("assets/images/logo.png"),
                  SizedBox(
                    height: 30,
                  ),
                  reuseableTextField("Enter Username", Icons.person_outline,
                      false, _emailTextController),
                  SizedBox(
                    height: 30,
                  ),
                  reuseableTextField("Enter Password", Icons.lock, false,
                      _passwordTextController),
                  SizedBox(
                    height: 30,
                  ),
                  SignInSignUpButton(context, true, () {}),
                  signUpOption()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't Have account?", style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SignupPage()));
          },
          child: Text(
            " Sign Up ",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
