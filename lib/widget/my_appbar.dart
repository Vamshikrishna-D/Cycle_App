import 'package:flutter/material.dart';
import 'package:flutter_application_1/MENU/menu.dart';

class Myappbar extends StatefulWidget {
  Myappbar({
    Key? key,
  }) : super(key: key);

  @override
  State<Myappbar> createState() => _MyappbarState();
}

class _MyappbarState extends State<Myappbar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: IconButton(
                icon: const Icon(Icons.arrow_back_ios,
                    color: Color.fromARGB(255, 216, 210, 210)),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
          const Text(
            'Cycle detail',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),
          ),
          IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return const AltarMenu();
                })));
              })
        ],
      ),
    );
  }
}
