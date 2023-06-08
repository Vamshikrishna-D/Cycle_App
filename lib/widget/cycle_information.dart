import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import '../models/cycle.dart';
import 'attribute.dart';

class CycleInfomation extends StatelessWidget {
  final Cycle cycle;
  const CycleInfomation({
    Key? key,
    required this.cycle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 24, right: 24, top: 50),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFF203e5a),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '\$${cycle.price}',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'price/hr',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Attribute(
                value: cycle.brand,
                name: 'Brand',
                textColor: Colors.white,
              ),
              Attribute(
                value: cycle.model,
                name: 'Mode No',
                textColor: Colors.white,
              ),
            ],
          )
        ],
      ),
    );
  }
}
