import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soft_project/widgets/screen_textfield.dart';
class CheckFlight extends StatelessWidget{
   CheckFlight({Key? key}) : super(key: key);
   Color ? cb =  const Color.fromRGBO(61,103,107,1);
   Color ? c =  const Color.fromRGBO(196,230,251,1);
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: const Text('Check ticket'),
         backgroundColor: cb,
       ),
       body: Padding(
         padding: const EdgeInsets.all(15.0),
         child: Column(
           children:  [
             const ScreenTextField('Enter ticket ID'),
             const SizedBox(height: 30,),
             Container(
               height: 400,
               width: 300,
               decoration: BoxDecoration(
                 color: c,
                   borderRadius: const BorderRadius.all(Radius.circular(30)),
                   border: Border.all(color: Colors.black)
               ),
               child: Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: const [
                     Text('Personal information:',style: TextStyle(fontWeight: FontWeight.bold,fontSize:25),),
                      Text('Name: Merna Mohamed'),
                     Text('SSN:8686866439'),
                     Text('PN:4678825889'),
                     Text('Age:21'),
                     SizedBox(height: 50,),
                     Text('Flight Info :',style: TextStyle(fontWeight: FontWeight.bold,fontSize:25)),
                     Text('Flight ID :12345'),
                     Text('Departure date : 24 oct, 22'),
                     Text('Take off : 7pm'),
                     Text('landing : 12am'),
                     Text('class : Economy class '),
                     Text('payment method : credit card '),
                     Text('seat : 3A '),
                     Text('luggage weight : 20 kg '),
                     SizedBox(height: 20,),

                   ],
                 ),
               ),
             )
           ],
         ),
       ),
     );
  }

}