import 'package:flutter/material.dart';

class Successful extends StatefulWidget {
  const Successful({Key? key}) : super(key: key);

  @override
  State<Successful> createState() => _SuccessfulState();
}

class _SuccessfulState extends State<Successful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.grey,
        title: const Text('Successful'),
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
           'You are successfully logged in',
           style: TextStyle(fontSize: 20),
         ),
         const SizedBox(height: 10),
         ElevatedButton(
           style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.grey)),
           onPressed: () {

             Navigator.pop(context);
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
