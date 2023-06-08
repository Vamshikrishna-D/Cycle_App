import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/signup.dart';
import 'package:flutter_application_1/screen/availblescreen.dart';

class Routing extends StatelessWidget {
  const Routing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Rental App',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Column(children: [
        ElevatedButton(
          child: const Text(
            'Join as User',
            style: TextStyle(color: Color.fromARGB(255, 176, 164, 175)),
          ),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => SignUpScreen()),
                (route) => false);
          },
        ),
        SizedBox( height: 10),
        ElevatedButton(
          child: const Text(
            'Join as Owner',
            style: TextStyle(color: Color.fromARGB(255, 176, 164, 175)),
          ),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => AvailableScreen()),
                (route) => false);
          },
        ),
      ]),
    );
  }
}
