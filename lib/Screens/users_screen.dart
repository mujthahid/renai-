import 'package:flutter/material.dart';
import 'package:renai_admin_app/Screens/add_user_screen.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 5),
            child: Row(
              children: const [
                Icon(Icons.groups_rounded,color:Color.fromARGB(255, 233, 217, 124),size: 30,),
                Text('USERS',style: TextStyle(color: Color.fromARGB(255, 233, 217, 124)),)
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(20)),
              margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              padding:const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              
              child: ListView.separated(itemBuilder: ((context, index) => 
              const ListTile(
                title: Text('MOHAMMED ABDULLAH',style: TextStyle(color: Colors.white),),
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person_outline,color: Colors.black,),
                ),
              )), separatorBuilder: ((context, index) => 
              const Divider(color: Colors.black,)), itemCount: 25),
            ),
          )
        ],
      ),
      floatingActionButton: InkWell(
        onTap: () => Navigator.push(context,MaterialPageRoute(
          builder: (context)=>const AddUserScreen())) ,
        child: CircleAvatar(
          backgroundColor: Colors.white,
          foregroundColor:const Color.fromARGB(255, 214, 151, 78) ,
          radius: 32,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const[
              Icon(Icons.person_add_alt,size: 35,),
              Text('ADD USER',style: TextStyle(fontSize: 9),)
            ],
          ),
        ),
      )
    );
  }
}