import 'package:flutter/material.dart';
class Booking extends StatefulWidget {
  const Booking ({Key? key}) : super(key: key);

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  Color ? c =  const Color.fromRGBO(196,230,251,1);
  Color ? cb =  const Color.fromRGBO(61,103,107,1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Booking',style: TextStyle(color:Colors.white ),),
        backgroundColor: cb,),
    );
  }
}
