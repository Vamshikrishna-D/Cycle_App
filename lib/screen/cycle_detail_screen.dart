import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/widget/cycle_detail_information.dart';
import 'package:flutter_application_1/widget/my_appbar.dart';

class detailscreen extends StatefulWidget {
  int index;
  detailscreen(this.index);

  @override
  State<detailscreen> createState() => _detailscreenState();
}

class _detailscreenState extends State<detailscreen> {
  @override
  Widget build(BuildContext context) {
    var cycle = cycleList[widget.index];
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/map.png',
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Myappbar(),
            Positioned(
              left: 20,
              right: 20,
              bottom: 40,

              child: Stack(
                children: [
                  cycledetailInformation(cycle: cycle),
                  Positioned(
                    right: 40,
                    child:Image.asset(
                      cycle.image,
                      height:100,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
