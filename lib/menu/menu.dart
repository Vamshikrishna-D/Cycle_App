import 'package:flutter/material.dart';
import 'package:flutter_application_1/MENU/Help&support.dart';
import 'package:flutter_application_1/auth/signin.dart';
import 'package:get/get.dart';

class AltarMenu extends StatefulWidget {
  const AltarMenu({super.key});

  @override
  State<AltarMenu> createState() => _AltarMenuState();
}

class _AltarMenuState extends State<AltarMenu> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            ClipPath(
              clipper: Clip1Clipper(),
              child: Container(
                height: 300,
                // width: 300,
                color: Color.fromARGB(255, 103, 208, 196),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Color.fromARGB(255, 7, 5, 5),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(
                  Icons.dark_mode_outlined,
                  color: Color.fromARGB(255, 7, 5, 5),
                ),
                onPressed: () {
                  Get.isDarkMode
                      ? Get.changeTheme(ThemeData.light())
                      : Get.changeTheme(ThemeData.dark());
                },
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: CircleAvatar(
                      backgroundColor: Color(0xffE6E6E6),
                      radius: 60,
                      child: Icon(
                        Icons.person,
                        color: Color(0xffCCCCCC),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    'Vamshi',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    '9515788493',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 42,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Card(
                          elevation: 10,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Text('Help & Support',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 71, 50, 50),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400)),
                              ),
                              IconButton(
                                  icon: Icon(
                                    Icons.help_center,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: ((context) {
                                      return contactsupport();
                                    })));
                                  })
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Card(
                          elevation: 10,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Text(
                                  'Terms & Conditions',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 71, 50, 50),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              IconButton(
                                  icon: Icon(
                                    Icons.question_mark_outlined,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: ((context) {
                                      return contactsupport();
                                    })));
                                  })
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Card(
                          elevation: 10,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Abouts us         ',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 71, 50, 50),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Icon(
                                Icons.info,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                        thickness: 0.4,
                        indent: 10,
                        endIndent: 10,
                      ),
                      Card(
                        elevation: 10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Log out',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 71, 50, 50),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.logout_outlined,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Clip1Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path = Path();
    path.lineTo(0, h - h / 16);
    path.quadraticBezierTo(w / 32, h - h / 128, w / 10, h);
    path.lineTo(w - w / 10, h);
    path.quadraticBezierTo(w - w / 32, h - h / 128, w, h - h / 16);
    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
