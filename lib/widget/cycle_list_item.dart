import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/models/cycle.dart';
import 'package:flutter_application_1/widget/cycle_detail_information.dart';
import 'package:flutter_application_1/widget/cycle_information.dart';

import '../screen/cycle_detail_screen.dart';

class CycleListItem extends StatefulWidget {
  const CycleListItem(this.index, {super.key});

  final int index;

  @override
  State<CycleListItem> createState() => _CycleListItemState();
}

class _CycleListItemState extends State<CycleListItem> {
  @override
  Widget build(BuildContext context) {
    Cycle cycle1 = cycleList[widget.index];
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Stack(
        children: [
          CycleInfomation(cycle: cycle1),
          Positioned(
            right: 40,
            child: Image.asset(
              cycle1.image,
              height: 100,
            ),
          )
        ],
      ),
    );
  }
}
