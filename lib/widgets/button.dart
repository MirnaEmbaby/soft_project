import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Buttons extends StatelessWidget {
  Color cb = const Color.fromRGBO(61, 103, 107, 1);
  final String text;
  final Function navigationFun;
  Buttons(this.text, this.navigationFun(BuildContext ctx));

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 70, right: 70),
      child: Container(
        color: cb,
        height: 40,
        width: 100,
        child: TextButton(
          onPressed: navigationFun(context),
          child: Text(
            '$text',
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
