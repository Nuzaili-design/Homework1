import 'package:flutter/material.dart';
import 'package:flutter_application_1/forgetPassword.dart';



class Reset extends StatefulWidget {

  @override
  State<Reset> createState() => _LogInState();
}

class _LogInState extends State<Reset> {
  final _formfield = GlobalKey<FormState>();
  final _emailController = TextEditingController();


  // bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_'{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reset password"),
        backgroundColor: Colors.grey,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Form(
            key: _formfield,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                const SizedBox(height: 50),
                TextFormField(
                  keyboardType:TextInputType.emailAddress,
                  controller: _emailController,
                  decoration:const InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),

                  ),
                  validator: (value){
                    bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_'{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value!);
                    if(value.isEmpty){
                      return "Enter Email";
                    }
                    if(!emailValid){
                      return "Enter a valid Email";
                    }
                  },
                ),

                const SizedBox(height: 32.0),
                InkWell(
                  onTap:(){
                    if(_formfield.currentState!.validate()){

                      {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => const Password()));
                      }


                      _emailController.clear();

                    }
                  },

                  child:
                  Container(
                    //elevation: 5.0,
                    color: Colors.grey,
                    padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 80),
                    child: const Text(
                      'Reset password',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
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