import 'package:flutter/material.dart';
import 'package:soft_project/screens/booking.dart';
class AirlineReservation  extends StatefulWidget {
  const AirlineReservation({Key? key}) : super(key: key);
  @override
  State<AirlineReservation> createState() => _AirlineReservationState();
}
class _AirlineReservationState extends State<AirlineReservation> {
  Color ? c =  const Color.fromRGBO(196,230,251,1);
  Color ? cb =  const Color.fromRGBO(61,103,107,1);
  gotoBooking(BuildContext ctx){
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
      return const Booking();
    }));
  }
  gotoFlight(BuildContext ctx){
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
      return const Booking();
    }));
  }
   Widget textField( text,color,fun){
   return Padding(
      padding: const EdgeInsets.only(left: 70,right: 70),
      child: Container(
          height: 40,
          width: 10,
          decoration: BoxDecoration(
              color: c,
              borderRadius: const BorderRadius.all(Radius.circular(10))
          ),
          child: TextButton(onPressed: fun,child: Text(text,style: const TextStyle(color:Colors.black),),
          )),

    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AirlineReservation',style: TextStyle(color:Colors.white ),),
      backgroundColor: cb,),
      body: Center(
        child: ListView(
          children: [
            const SizedBox(height:20,),
            textField('Book Ticket',c,()=>gotoBooking),
            const SizedBox(height:30,),
            textField('Check Flight',c,()=>gotoFlight),
            const SizedBox(height:100,),
            Padding(
              padding: const EdgeInsets.only(left: 70,right: 70),
              child: Container(
                  color: cb,
                  height: 40,
                  width: 10,
                  child: TextButton(onPressed:()=>{}, child:const Text('Logout',style: TextStyle(color:Colors.white),),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
