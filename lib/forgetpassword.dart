import 'package:flutter/material.dart';
import 'package:flutter_application_1/reset.dart';

import 'login.dart';
class Password extends StatefulWidget {
  const Password({Key? key}) : super(key: key);



  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {


  final _formKey= GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();



  @override
  void dispose() {

    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change the Password'),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [


                const SizedBox(height: 16.0),
                TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    labelText: 'New password',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a valid password';
                    }
                    return null;

                  },
                ),

                const SizedBox(height: 16.0),
                TextFormField(
                  controller: _confirmPasswordController,
                  decoration: const InputDecoration(
                    labelText: ' Confirm your password',
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please confirm your password';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 32.0),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => const LoginScreen()));
                      }

                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 50), backgroundColor: Colors.grey,
                    ),
                    child: const Text('Change password')
                ),

              ],

            ),
          ),
        ),
      ),



    );

  }
}
