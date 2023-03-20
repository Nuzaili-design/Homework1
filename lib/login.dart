import 'package:flutter/material.dart';
import 'package:flutter_application_1/Signup.dart';
import 'package:flutter_application_1/forgetPassword.dart';
import 'package:flutter_application_1/reset.dart';
import 'package:flutter_application_1/successful.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  final _formKey= GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();



  @override
  void dispose() {

    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login',
        ),
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
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: 'User name',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty){
                      return 'Please enter a valid name';
                    }

                    return null;

                  }
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a valid password';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 32.0),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => const Successful()));
                        }

                      }
                      },


                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 50), backgroundColor: Colors.grey,
                    ),
                    child: const Text('Login')
                ),
    const SizedBox(height: 10),
    GestureDetector(
    onTap: (){

    Navigator.of(context).push(MaterialPageRoute(builder: (context){
    return Reset();
    }));

    },

    child: const Text('Forgot password?',
    style: TextStyle(
    color: Colors.grey,
    fontSize: 20,

    ),
          ),
    ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: (){

                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return const SignUp();
                    }));

                  },

                  child: const Text('Sign up',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,

                    ),
                  ),
                ),

              ],

    ),
    ),
    ),
      ),
    );
  }
}

