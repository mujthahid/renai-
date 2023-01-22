

import 'package:flutter/material.dart';
import 'package:renai_admin_app/Screens/routes_screen.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.black,
      body:Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
  
  children:  [const Image(image: AssetImage('assets/images/renai_logo_1.png'),
  height: 250,
  width: 250,),
   const Padding(
     padding: EdgeInsets.all(50.0),
     child: TextField(
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color:  Color.fromARGB(255, 167, 165, 165))
        ),
        hintText: "MOBILE NUMBER",
        hintStyle: TextStyle(
          color: Color.fromARGB(255, 167, 165, 165)
        )
  
      ),
     ),
   ) ,
   ElevatedButton(onPressed: (){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) =>const RouteScreen())));
   }  ,
   style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all(Colors.white),
    padding: MaterialStateProperty.all(const EdgeInsets.fromLTRB(100, 0, 100,0)),
    foregroundColor: MaterialStateProperty.all(Colors.black),
    shape: MaterialStateProperty.all(RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0)
    ))   ),
   child: const Text('GET OTP'))
      ]
      ),
    );
  }
}