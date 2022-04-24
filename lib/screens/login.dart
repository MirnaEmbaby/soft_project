import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:soft_project/screens/new_account.dart';
import 'package:soft_project/widgets/screen_textfield.dart';
import 'airline_reservation.dart';

class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}

Color c = const Color.fromRGBO(196, 230, 251, 1);
Color cb = const Color.fromRGBO(61, 103, 107, 1);
gotoAirlineReservation(BuildContext ctx) {
  Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_) {
    return AirlineReservation();
  }));
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //C5E7FC
      backgroundColor: c,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "images/sw.png",
                  width: 300,
                  height: 150,
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  height: 70,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: ScreenTextField("User Name"),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: ScreenTextField("Password"),
                ),
                const SizedBox(
                  height: 60,
                ),
                Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: cb,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () => gotoAirlineReservation(context),
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )),
                const SizedBox(
                  height: 25,
                ),
                InkWell(
                  child: const Center(
                      child: Text(
                    'Create new account',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.blue),
                  )),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return NewAccount();
                    }));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
