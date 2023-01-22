

import 'package:flutter/material.dart';
import 'package:renai_admin_app/Screens/categories_screen.dart';
import 'package:renai_admin_app/Screens/media_screen.dart';
import 'package:renai_admin_app/Screens/users_screen.dart';

class RouteScreen extends StatelessWidget {
  const RouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 17, 17, 17),
        appBar: AppBar(title: const Image(image: AssetImage('assets/images/renai_logo_2.png'),
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
      body: Column(
        
       children: [
       const  SizedBox(height: 50,),
       Center(heightFactor: 1.2, child: ElevatedButton.icon(

        style: ButtonStyle(backgroundColor: const MaterialStatePropertyAll(Colors.black),
        fixedSize:const  MaterialStatePropertyAll(Size(350, 25)),
        shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))),

          onPressed: (){
            Navigator.push(context, 
            MaterialPageRoute(builder:(context)=>const MediaScreen()));
          }, 
          icon: const Icon(Icons.attach_file), label: const Text('MEDIA',style: TextStyle(color: Color.fromARGB(255, 214, 151, 78)),)
          )
          ),

       Center(heightFactor: 1.2, child: ElevatedButton.icon(
        
        style: ButtonStyle(backgroundColor: const MaterialStatePropertyAll(Colors.black),
        fixedSize:const  MaterialStatePropertyAll(Size(350,25)),
        shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))),

        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const UsersScreen()));
        }, icon: const Icon(Icons.groups), label: const Text('USERS',style: TextStyle(color: Color.fromARGB(255, 214, 151, 78))))
        ),
       
       
       Center (heightFactor: 1.2, child: ElevatedButton.icon(
        style: ButtonStyle(backgroundColor: const MaterialStatePropertyAll(Colors.black),
        fixedSize:const  MaterialStatePropertyAll(Size(350, 25)),
        shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))),
        
        onPressed:(){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const CategoriesScreen()));
        }, icon: const Icon(Icons.category_outlined), label: const Text('CATEGORIES',style: TextStyle(color: Color.fromARGB(255, 214, 151, 78))))
        )
       ],
  
      ),
      )
    );
  }
}