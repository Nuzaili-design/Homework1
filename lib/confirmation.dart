import 'package:flutter/material.dart';
import 'package:flutter_application_1/Signup.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/successful.dart';
class Confirmation extends StatefulWidget {
  const Confirmation({Key? key}) : super(key: key);

  @override
  State<Confirmation> createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Confirmation'),
      ),
      body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.check_circle_outline_rounded,
                  size: 100,
                  color: Colors.black,
                ),
                const SizedBox(height: 20),
                const Text(
                  'you are successfully signed up',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.grey)),
                  onPressed: () {

                    Navigator.push(context,MaterialPageRoute(builder: (context) => const LoginScreen()));
                  },
                  child: const Text('Back'),
                )
              ],
            ),
          )
      ),


    );
  }
}
