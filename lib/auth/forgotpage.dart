import 'package:flutter/material.dart';

class forgotscreen extends StatelessWidget {
  const forgotscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      body: const mystateful(),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Icon(Icons.lock,
                size: 180, color: Color.fromARGB(255, 197, 193, 193)),
            const Text('FORGOT PASSWORD',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 10,
            ),
            const Text(
                '    Provide your acounts email for which you   \n                 what reset your password',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal)),
            const SizedBox(
              height: 18,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: TextField(
                    controller: gmailController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 137, 123, 139),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  textStyle:
                      const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              child: const Text(
                'Next',
                style: TextStyle(color: Color.fromARGB(255, 176, 164, 175)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
