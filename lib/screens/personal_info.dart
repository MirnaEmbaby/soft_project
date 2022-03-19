import 'package:flutter/material.dart';
import 'package:soft_project/widgets/screen_textfield.dart';

class PersonalInfo extends StatelessWidget {
  PersonalInfo({Key? key}) : super(key: key);
  Color? cb = const Color.fromRGBO(61, 103, 107, 1);
  Widget miniTextfield() {
    return const SizedBox(
      height: 30,
      width: 30,
      child: TextField(
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 10)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Information'),
        backgroundColor: cb,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const ScreenTextField('Your full name'),
              const SizedBox(
                height: 30,
              ),
              const ScreenTextField('Social security number'),
              const SizedBox(
                height: 30,
              ),
              const ScreenTextField('E-mail'),
              const SizedBox(
                height: 30,
              ),
              const ScreenTextField('Passport number'),
              const SizedBox(
                height: 30,
              ),
              const ScreenTextField('Credit card number'),
              const SizedBox(
                height: 30,
              ),
              const ScreenTextField('Birth date'),
              const SizedBox(
                height: 80,
              ),
              Container(
                  decoration: BoxDecoration(
                    color: cb,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                  height: 40,
                  width: 200,
                  child: TextButton(
                    onPressed: () {
                      final alert = AlertDialog(
                        content: SizedBox(
                          height: 100,
                          width: 200,
                          child: Column(
                            children: [
                              const Text(
                                  'Check your mail and enter the sent PIN code'),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  miniTextfield(),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  miniTextfield(),
                                  const SizedBox(width: 10),
                                  miniTextfield(),
                                  const SizedBox(width: 10),
                                  miniTextfield(),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return alert;
                          });
                    },
                    child: const Text(
                      '   Confirm   ',
                      style: TextStyle(color: Colors.white),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
