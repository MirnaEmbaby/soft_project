import 'package:flutter/material.dart';

import 'booking.dart';
import 'ticket_info.dart';
class AvailableFlight extends StatelessWidget {
   AvailableFlight({Key? key}) : super(key: key);
  Color? c = const Color.fromRGBO(196, 230, 251, 1);
  Color? cb = const Color.fromRGBO(61, 103, 107, 1);
 Widget card(text1,text2,text3,ctx){
   return  Card(
       color: c,
       elevation: 40,
       child: Padding(
         padding: const EdgeInsets.all(10.0),
         child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children:  [
               Text(text1),
                Text(text2),
                Text(text3),
               Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   Container(
                       color: cb,
                       height: 30,
                       width: 100,
                       child: TextButton(
                           child:const Text('book',style: TextStyle(color:Colors.white),),
                           onPressed:()=>
                           {
                             Navigator.of(ctx).push(
                                 MaterialPageRoute(builder: (_) {
                                   return const Booking();
                                 }))
                             ,
                           })
                   )  ],
               ),
             ] ),
       )

   );
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title:  const Text('Available flight'),backgroundColor: cb,),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              InkWell(child: card('Tuesday,24 oct.22','Cairo -> kuwait','Price:9000 EGP',context),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) {
                      return  TicketInfo();
                    }));
              }),
              card('Monday,3 sep.22','Cairo -> dubai','Price:7000 EGP',context),
              card('Sunday,14 mar.22','paris -> cairo','Price:70000 EGP',context),
              card('Monday,3 sep.22','Cairo -> london','Price:50000 EGP',context),
     ] ),
        ),
    )
    );
  }
}
//Tuesday,24 oct.22
//Cairo -> kuwait
//Price:2000 EGP