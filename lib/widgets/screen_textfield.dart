import 'package:flutter/material.dart';

class ScreenTextField extends StatelessWidget {
  final String? labelText;

  const ScreenTextField(this.labelText);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        decoration: InputDecoration(
          label: Text("$labelText"),
          fillColor: Colors.white,
          filled: true,
          enabledBorder: const OutlineInputBorder(borderSide: BorderSide()),
          focusedBorder:
              const OutlineInputBorder(borderSide: BorderSide(width: 1)),
        ),
      ),
    );
  }
}
