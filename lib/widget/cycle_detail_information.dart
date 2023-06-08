import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/models/cycle.dart';
import 'package:flutter_application_1/widget/rating_bar.dart';
import 'package:flutter_application_1/widget/attribute.dart';
import 'package:url_launcher/url_launcher.dart';

class cycledetailInformation extends StatelessWidget {
  const cycledetailInformation({
    Key? key,
    required this.cycle,
  }) : super(key: key);

  final Cycle cycle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(top: 50),
      decoration: BoxDecoration(
        color: Color(0xFF40ac9c),
        borderRadius: BorderRadius.circular(1),
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
              ),
              Attribute(
                value: cycle.model,
                name: 'Model No',
              ),
              Attribute(
                value: cycle.brand,
                name: 'brand',
              ),
              Attribute(
                value: cycle.model,
                name: 'Model',
              ),
            ],
          ),
          Divider(height: 16, color: Colors.black),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/av.png',
                height: 120,
              ),
              Expanded(
                child: Column(
                  children: [
                    DriverInfo(),
                    SizedBox(
                      height: 12,
                    ),
                    DriverApparise(),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF203e5a),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Text(
                            'Call',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            // final Uri url =
                            //     Uri(scheme: 'tel',
                            //      path: "9515788493");
                            // if (await canLaunchUrl(url)) {
                            //   launchUrl(url);
                            // } else {
                            //   throw 'Could not launch $url';
                            // }
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF203e5a),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          child: Text(
                            'Book Now',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class DriverApparise extends StatelessWidget {
  const DriverApparise({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '5.0',
          style: TextStyle(),
        ),
        SizedBox(
          width: 10,
        ),
        RatingBar(
          onRatingUpdate: (value) {},
          size: 14,
          selectColor: Colors.white,
          padding: 0,
        ),
      ],
    );
  }
}

class DriverInfo extends StatelessWidget {
  const DriverInfo({
    Key? key,
  }) : super(key: key);

  void _showDatePicker(context) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'vamshi',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
            Text(
              'Licence 210',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ElevatedButton(
              onPressed: () {
                _showDatePicker(context);
              },
              style: ElevatedButton.styleFrom(
                // backgroundColor: mCardColor,
                backgroundColor: Color.fromARGB(255, 169, 130, 175),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Choose Date',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            // Text(
            //   '123',
            //   style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            // ),
          ],
        ),
      ],
    );
  }
}
