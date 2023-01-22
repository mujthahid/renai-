import 'package:flutter/material.dart';


class AddUserScreen extends StatelessWidget {
  const AddUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 17, 17, 17),
      appBar: AppBar(leading:  IconButton(onPressed: (){ 
          Navigator.pop(context);}, 
          icon: const Icon(color:Color.fromARGB(255, 214, 151, 78),
          Icons.arrow_back_ios_new_rounded)
          ),
          title: const Image(image: AssetImage('assets/images/renai_logo_2.png'),
        height: 125,
        width: 125,),
        backgroundColor: Colors.black,
        actions: [IconButton(onPressed: (){}, 
        icon:const Icon(Icons.search,size: 30,color: Color.fromARGB(255, 233, 217, 124),) 
        )],
        shape:const RoundedRectangleBorder(
         borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(25)
         )
        ),
        ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 5),
            child: Row(
              children: const [
                 Icon(Icons.person_add_alt_outlined,color:Color.fromARGB(255, 233, 217, 124),size: 30,),
                Text('ADD USER',style: TextStyle(color: Color.fromARGB(255, 233, 217, 124)),)
            ],
            ),
          ),
          Container(
                height: 450,
                width: double.infinity,
                margin: const EdgeInsets.only(top: 10, left: 25,right: 25),
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20)
                ),
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  [
                  const CircleAvatar(radius: 25,
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                    child: Icon(Icons.person_outline_rounded),),
                  Padding(
                    padding: const EdgeInsets.only(top: 35),
                    child: Column(
                      children: const [
                     TEXTFIELD(text: "NAME"),
                     TEXTFIELD(text:"MOBILE NO."),
                     TEXTFIELD(text: "ADDRESS"),
                     TEXTFIELD(text: 'DESIGNATION')
                      ],
                    ),
                  ),
                  const SizedBox(height: 50,),
                 ElevatedButton(style:  ButtonStyle(
                  padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 75)),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(30))),
                  backgroundColor:const MaterialStatePropertyAll(Colors.white)), 
                  onPressed: (){}, child: const Text('ADD USER',
                               style: TextStyle(
                               color: Colors.black),))
                ],
               ),
              )
        ],
      ),
    );
  }
}



class TEXTFIELD extends StatelessWidget {
  final String text;

  const TEXTFIELD({super.key, required this.text});

  @override
  Widget build(BuildContext context) {

    return  Padding(
         padding: const EdgeInsets.symmetric(horizontal: 50),
     child: TextField(
      decoration: InputDecoration(
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color:  Color.fromARGB(255, 167, 165, 165))
        ),
        hintText: text,
        hintStyle: const TextStyle(
          color: Color.fromARGB(255, 167, 165, 165),
          fontSize: 12
        )
  
      ),
     ),
   );
  }
}