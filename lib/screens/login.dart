import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'airline_reservation.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

Color ? c =  const Color.fromRGBO(196,230,251,1);
Color ? cb =  const Color.fromRGBO(61,103,107,1);
gotoAirlineReservation(BuildContext ctx){
  Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
    return const AirlineReservation();
  }));
}
class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(  //C5E7FC
     backgroundColor: c,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Image.asset("images/sw.jpeg",fit: BoxFit.scaleDown,),
            const SizedBox(height:10,),
             const TextField(
               minLines: 1,
               maxLines: 1,
                decoration: InputDecoration(label:Text('User Name'),
                    fillColor: Colors.white,
                    filled: true,
                enabledBorder: OutlineInputBorder(borderSide: BorderSide()),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 1))),
              ),
            const SizedBox(height:10,),
             const TextField(
               keyboardType: TextInputType.visiblePassword,
               minLines: 1,
               maxLines: 1,
              decoration: InputDecoration(label:Text('Password'),
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide()),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 1))),
            ),
            const SizedBox(height:15,),
            Padding(
              padding: const EdgeInsets.only(left: 70,right: 70),
              child: Container(
                color: cb,
                  height: 40,
                  width: 10,
                  child: TextButton(onPressed:()=>gotoAirlineReservation(context), child:const Text('Login',style: TextStyle(color:Colors.white),),
                  )),
            ),
            const SizedBox(height:15,),
            const Center(child: Text('Create new account',style: TextStyle(decoration: TextDecoration.underline,color: Colors.blue ),)),
          ],
        ),
      ),
    );
  }
}
