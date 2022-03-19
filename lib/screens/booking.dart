import 'package:flutter/material.dart';
import 'package:soft_project/widgets/screen_textfield.dart';

import 'ava_flight.dart';

class Booking extends StatefulWidget {
  const Booking({Key? key}) : super(key: key);

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  Color? c = const Color.fromRGBO(196, 230, 251, 1);
  Color? cb = const Color.fromRGBO(61, 103, 107, 1);
  gotoAvaFlight(BuildContext ctx){
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
      return  AvailableFlight();
    }));
  }
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
        children:  [
          const ScreenTextField("Departure airport"),
          const SizedBox(
            height: 15,
          ),
          const ScreenTextField("Arrival airport"),
          const SizedBox(
            height: 15,
          ),
          const ScreenTextField("Departure date"),
          const SizedBox(
            height: 15,
          ),
          const ScreenTextField("Return date"),
          const SizedBox(
            height: 15,
          ),
          const ScreenTextField("Number of travellers"),
          const SizedBox(
            height: 15,
          ),
          const ScreenTextField("Class"),
          const SizedBox(
            height: 15,
          ),
          const ScreenTextField("Payment method"),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70,right: 70),
            child: Container(
                color: cb,
                height: 40,
                width: 100,
                child: TextButton(onPressed:()=>gotoAvaFlight(context), child: const Text('Search for flights',style: TextStyle(color:Colors.white),),
                )),
          ),

        ],
        ),
      ),
    );
  }
}
