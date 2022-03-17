import 'package:flutter/material.dart';
import 'package:soft_project/widgets/screen_textfield.dart';

class Booking extends StatefulWidget {
  const Booking({Key? key}) : super(key: key);

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  Color? c = const Color.fromRGBO(196, 230, 251, 1);
  Color? cb = const Color.fromRGBO(61, 103, 107, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Booking',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: cb,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: const [
            ScreenTextField("Departure airport"),
            SizedBox(
              height: 15,
            ),
            ScreenTextField("Arrival airport"),
            SizedBox(
              height: 15,
            ),
            ScreenTextField("Departure date"),
            SizedBox(
              height: 15,
            ),
            ScreenTextField("Return date"),
            SizedBox(
              height: 15,
            ),
            ScreenTextField("Number of travellers"),
            SizedBox(
              height: 15,
            ),
            ScreenTextField("Class"),
            SizedBox(
              height: 15,
            ),
            ScreenTextField("Payment method"),
            SizedBox(
              height: 50,
            ),

          ],
        ),
      ),
    );
  }
}
