import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:soft_project/widgets/screen_textfield.dart';
import 'airline_reservation.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

Color ? c =  const Color.fromRGBO(196,230,251,1);
Color ? cb =  const Color.fromRGBO(61,103,107,1);
gotoAirlineReservation(BuildContext ctx){
  Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_){
    return const AirlineReservation();
  }));
}
class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(  //C5E7FC
     backgroundColor: c,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("images/sw.png",width: 250,height: 120,fit: BoxFit.fill,),
                const SizedBox(height: 20,),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: ScreenTextField("User Name"),
                ),
                const SizedBox(height:20,),
                 const Padding(
                   padding: EdgeInsets.symmetric(horizontal: 20),
                   child: ScreenTextField("Password"),
                 ),
                const SizedBox(height:30,),
                Padding(
                  padding: const EdgeInsets.only(left: 70,right: 70),
                  child: Container(
                      color: cb,
                      height: 40,
                      width: 100,
                      child: TextButton(onPressed:()=>gotoAirlineReservation(context), child: const Text('Login',style: TextStyle(color:Colors.white),),
                      )),
                ),
                const SizedBox(height:15,),
                const Center(child: Text('Create new account',style: TextStyle(decoration: TextDecoration.underline,color: Colors.blue ),)),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
