import 'package:flexyatra/Presentations/loginPage.dart';
import 'package:flexyatra/resuseable_widgets/resuseable_widget.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(color: Color.fromARGB(255, 3, 122, 241)),
          height: 50,
          width: 200,
          child: OutlinedButton(
            style: ButtonStyle(
                foregroundColor:
                    MaterialStateColor.resolveWith((states) => Colors.blue),
                backgroundColor:
                    MaterialStateColor.resolveWith((states) => Colors.red)),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
            child: Text("LogOut"),
          ),
        ),
      ),
    );
  }
}
