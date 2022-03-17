import 'package:flutter/material.dart';
import 'package:soft_project/screens/booking.dart';
import 'package:soft_project/screens/login.dart';
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

  logout(BuildContext ctx){
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
      return const Login();
    }));
  }

   Widget ScreenButton( text,color,fun){
   return Padding(
      padding: const EdgeInsets.only(left: 70,right: 70),
      child: Container(
          height: 40,
          width: 200,
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
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height:20,),
              ScreenButton('Book Ticket',c,()=>gotoBooking(context)),
              const SizedBox(height:30,),
              ScreenButton('Check Flight',c,()=>gotoFlight(context)),
              const SizedBox(height:100,),
              Padding(
                padding: const EdgeInsets.only(left: 70,right: 70),
                child: Container(
                    color: cb,
                    height: 40,
                    width: 100,
                    child: TextButton(onPressed:()=>logout(context), child:const Text('Logout',style: TextStyle(color:Colors.white),),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
