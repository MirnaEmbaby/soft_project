import 'package:flutter/material.dart';
import 'package:soft_project/widgets/screen_textfield.dart';

// ignore: must_be_immutable
class NewAccount extends StatelessWidget {
  NewAccount({Key? key}) : super(key: key);
  Color? c = const Color.fromRGBO(196, 230, 251, 1);
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
        title: const Text('Create New Account'),
        backgroundColor: cb,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const ScreenTextField('Enter your name'),
              const SizedBox(
                height: 15,
              ),
              const ScreenTextField('Enter SSN'),
              const SizedBox(
                height: 15,
              ),
              const ScreenTextField('Enter E-mail'),
              const SizedBox(
                height: 15,
              ),
              const ScreenTextField('Enter password'),
              const SizedBox(
                height: 15,
              ),
              const ScreenTextField('Confirm password'),
              const SizedBox(
                height: 100,
              ),
              Container(
                  decoration: BoxDecoration(
                    color: cb,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                  height: 40,
                  width: 100,
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
                                height: 10,
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
                      'Done',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
