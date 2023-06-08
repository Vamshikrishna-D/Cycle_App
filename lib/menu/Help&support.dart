import 'package:flutter/material.dart';

class contactsupport extends StatelessWidget {
  const contactsupport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 97, 209, 140),
        title: const Text(
          'help& support ',
          style: TextStyle(
              fontSize: 20, color: Color.fromARGB(255, 169, 164, 149)),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '1.General',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'These terms & conditions are applied to a user who has access to avail the services provided by Freedo. '
              'These will regulate & govern the relationship between Freedo and "User". Freedo and "User" are hereinafter will be collectively referred as "Parties" and individually as "Party". '
             ' These terms & conditions shall constitute a legally valid & binding contract under the applicable laws. Use of any service through Freedo s Website/App by the user shall be deemed to be an acceptance of all terms and conditions set forth herein.',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'TERMS OF USE'
              ,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '1.BOKING'
              ,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '1.Booking'
'a)'
'The user is required to book the vehicle or service strictly through the Freedo Rental Mobile App or Freedo Rental.'
'b)'
'The booking made shall be made and honored by the registered user only.'
'c)'
'The booking shall be strictly non-transferable.'
'd)'
'The booking shall be made and honored as per the available inventory.'
'e)'
'The booking shall be open to change as per the availability of the inventory vehicles.'
'2. Vehicle Pick-Up & Return'
'a)'
'Freedo Rentals, shall notify the pick-up and drop location of the vehicle through Freedo Rentals Mobile App/ Freedo Rentals Website.'
'b)'
'The User shall flourish a valid Government Id proof before taking the delivery of the vehicle.'
'c)'
'The User shall dutifully pick-up the vehicle from the designated location.'
'd)'
'The User, before taking the delivery of the vehicle, shall inspect the vehicle to the best of his/her capability for signs of damage or malfunction and inform Freedo if any irregularities are observed.'
'e)'
'Freedo shall initiate the ride/ booking start time as soon as the physical possession of the vehicle has been transferred to the User.'
'f)'
'The User shall return the vehicle to same location as designated by Freedo.'
'g)'
'The User shall return the vehicle in the same condition as it was received.'
'h)'
'A thorough inspection of the vehicle shall be marked before receiving the vehicle at the drop location.'
              ,
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
            ),
          ),
          
        ],
      ),
    );
  }
}
