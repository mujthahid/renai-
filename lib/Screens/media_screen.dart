import 'package:flutter/material.dart';
import 'package:renai_admin_app/Screens/add_media_screen.dart';


class MediaScreen extends StatelessWidget {
  const MediaScreen({super.key});

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
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child:  Text('MEDIA', style: TextStyle(color: Color.fromARGB(255, 214, 151, 78)),)),
          Expanded(
             child: GridView.builder(itemCount: 50, 
             padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, 
              childAspectRatio: 2,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15),
             itemBuilder: ((context, index) => Stack(
               children: 
                  [ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image(image: AssetImage(
                      index%2 == 0 ? 'assets/images/thumbnail1.jpeg' : 'assets/images/thumbnail2.jpeg'
                    ),fit: BoxFit.cover),
                  ),
                 Positioned(
                  top: 8,
                  right: 25,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 1),
                    width:50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white
                    ),
                    child: Row(
                      children: const[
                        Icon(Icons.delete_outline_rounded),
                        Icon(Icons.create_outlined)
                      ],
                    ),
                  )),

                  Positioned(
                  bottom: 8,
                  right: 25,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal:2),
                    width:50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.black
                    ),
                    child: const Center(child:Text('PDF',style: TextStyle(color:Color.fromARGB(255, 233, 217, 124) ),))
                  ))
                  
                ],
             ))
             ),
          )

        ],
      ),
      floatingActionButton: ElevatedButton.icon(onPressed: (){Navigator.push(context,
      MaterialPageRoute(builder: (context)=> const AddMediaScreen())
      );}, 
      icon: const Icon(Icons.attach_file), label: const Text('ADD MEDIA'),
      style:  ButtonStyle(backgroundColor: const MaterialStatePropertyAll(Colors.white),
      foregroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 214, 151, 78)),
      padding:const  MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 30,vertical: 10)),
      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)))),
      ),
      floatingActionButtonLocation:FloatingActionButtonLocation.centerFloat ,
    );
  }
}