import 'package:flutter/material.dart';


class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 17, 17, 17),
    appBar : AppBar(leading:  IconButton(onPressed: (){ 
          Navigator.pop(context);}, 
          icon: const Icon(color:Color.fromARGB(255, 214, 151, 78),
          Icons.arrow_back_ios_new_rounded)
          ),
          title: const Image(image: AssetImage('assets/images/renai_logo_2.png'),
        height: 125,
        width: 125,),
        backgroundColor: Colors.black,
        actions: [IconButton(onPressed: (){}, 
        icon:const Icon(Icons.search,size: 30,color:Color.fromARGB(255, 233, 217, 124),) 
        )],
        shape:const RoundedRectangleBorder(
         borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(25)
         )
        ),
        ),
        body: ListView(
          children:   [
         const  SizedBox(height: 30,),
         const  BorderedTextField(text: 'NAME'),
         Stack(children: [const BorderedTextField(text: 'ADD THUMBNAIL'),
          Positioned(
            top: 10, right: 30,
            child: ElevatedButton( style: ButtonStyle(
              backgroundColor:const MaterialStatePropertyAll(Colors.white), 
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))
                )
                ),
           onPressed: (){},
           child: const Text('JPG',style: TextStyle(
            fontSize:10,color: Colors.black ))
            ))])
          ],
        ),
    );
  }
}

class BorderedTextField extends StatelessWidget {
  final String text ;
  const BorderedTextField({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25,vertical:10 ),
            child: TextField(

              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.black,
                  enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                hintText: text,
                hintStyle: const TextStyle(color: Color.fromARGB(255, 167, 165, 165)),
                contentPadding: const EdgeInsets.symmetric(horizontal:15),
                
                
              ),
            ),
          );
  }
}