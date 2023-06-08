import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/signin.dart';

class confo extends StatelessWidget {
  const confo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      body: mystateful(),
    );
  }
}

class mystateful extends StatefulWidget {
  const mystateful({super.key});

  @override
  State<mystateful> createState() => _mystatefulState();
}

class _mystatefulState extends State<mystateful> {
  TextEditingController gmailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Icon(Icons.book_online,
              size: 130, color: Color.fromARGB(255, 197, 193, 193)),
          Text('NEW CREDENTIALS',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 10,
          ),
          Text(
              'Your identity as been verifed \n   set your new password  ',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal)),
          SizedBox(
            height: 18,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                  // controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'New Password',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                  // controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Confirm Pasword',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            child: const Text(
              'Update',
              style: TextStyle(color: Color.fromARGB(255, 176, 164, 175)),
            ),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => SignInScreen()),
                  (route) => false);
            },
            style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 137, 123, 139),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                textStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}