import 'package:flutter/material.dart';
import 'package:flutter_application_1/bottomNav/rentProcess.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/menu/menu.dart';
import 'package:flutter_application_1/screen/cycle_detail_screen.dart';
import 'package:flutter_application_1/widget/cycle_list_item.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class AvailableScreen extends StatefulWidget {
  const AvailableScreen({super.key});

  @override
  State<AvailableScreen> createState() => _AvailableScreenState();
}

class _AvailableScreenState extends State<AvailableScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF40ac9c),
      appBar: AppBar(
        backgroundColor: const Color(0xFF40ac9c),
        elevation: 0,
        title: const Text('Available Cylce'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) {
                    return const AltarMenu();
                  }),
                ),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: ListView.builder(
          itemCount: cycleList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => detailscreen(index),
                  ),
                );
              },
              child: CycleListItem(index),
            );
          },
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(1.0),
        child: GNav(
          backgroundColor: Color.fromARGB(255, 211, 224, 221),
          color: Color.fromARGB(255, 10, 15, 16),
          activeColor: Colors.white,
          tabBackgroundColor: Colors.grey,
          gap: 5,
          onTabChange: (index) {
            print(index);
          },
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
          tabs: [
            const GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            const GButton(
              icon: Icons.whatshot,
              text: 'whatsapp',
            ),
            GButton(
              icon: Icons.money,
              text: 'money',
              onPressed: () {},
            ),
            GButton(
              icon: Icons.car_repair,
              text: 'rent',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) {
                      return const rent();
                    }),
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
