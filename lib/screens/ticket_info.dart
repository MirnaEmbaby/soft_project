import 'package:flutter/material.dart';

import 'personal_info.dart';
class TicketInfo extends StatelessWidget {
   TicketInfo({Key? key}) : super(key: key);
  Color? cb = const Color.fromRGBO(61, 103, 107, 1);
   Color? c = const Color.fromRGBO(196, 230, 251, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  const Text('Ticket Information'),backgroundColor: cb,),
      body: Center(
        child: Container(
          height: 400,
    decoration: BoxDecoration(
    color: c,
    borderRadius: const BorderRadius.all(Radius.circular(40)),
    border: Border.all(color: Colors.black)
    ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children:  [
                const Text('Airline: Al- Jazeera airlines'),
                const SizedBox(height: 5,),
                const Text('Flight ID : 12345'),
                const SizedBox(height: 5,),
                const Text('Departure date: 24 oct.2022'),
                const SizedBox(height: 5,),
                const Text('Take off : 7 pm'),
                const SizedBox(height: 5,),
                const Text('landing : 12 am'),
                const SizedBox(height: 5,),
                const Text('class : Economy class '),
                const SizedBox(height: 5,),
                const Text('payment method : credit card '),
                const SizedBox(height: 5,),
                const Text('seat : 3A '),
                const SizedBox(height: 5,),
                const Text('luggage weight : 20 kg '),
                const SizedBox(height: 50,),
                Container(
                    color: cb,
                    height: 40,
                    width: 200,
                    child: TextButton(onPressed:()=>{
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_){
                    return  PersonalInfo();
                    }))
                      }, child: const Text('Book this ticket',style: TextStyle(color:Colors.white),),
                    ))
              ],
            ),
          ),
        ),
      )
    );
  }
}
