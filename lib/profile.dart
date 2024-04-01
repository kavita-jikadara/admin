import 'package:flutter/material.dart';
class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: const Text(
          "My Profile",         
          style: TextStyle(            
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        leading: const Icon(Icons.account_circle_outlined,size: 25,color: Colors.white,),
      ),
      body: Padding(padding: const EdgeInsets.only(top: 250,bottom: 10,left: 10,right: 10),
      child: Column(
        children: [Row(
          children: [
            Container(
              height: 35,
              width: 100,
              color: const Color.fromARGB(255, 234, 205, 239),
              child: const Center(child: Text("ID :",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600),)),
          ),
           Container(
              height: 35,
              width: 245,
              color: const Color.fromARGB(255, 246, 243, 243),
              child: const Text("   admin",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600),),
          ),
          ],
        ),
        const Divider(color: Color.fromARGB(255, 212, 212, 212),
        height: 5,),
        Row(
          children: [
            Container(
              height: 35,
              width: 100,
              color: const Color.fromARGB(255, 248, 184, 205),
              child: const Center(child: Text("Surname :",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600),)),
          ),
           Container(
              height: 35,
              width: 245,
              color: const Color.fromARGB(255, 246, 243, 243),
              child: const Text("   admin",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600),),
          ),
          ],
        ),
        const Divider(color: Color.fromARGB(255, 212, 212, 212),
        height: 5,),
        Row(
          children: [
            Container(
              height: 50,
              width: 100,
              color: const Color.fromARGB(255, 234, 205, 239),
              child: const Center(child: Text("Mobile \nNumber :",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600),)),
          ),
           Container(
              height: 50,
              width: 245,
              color: const Color.fromARGB(255, 246, 243, 243),
              child: const Text("   91**********",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600),),
          ),
          ],
        ),
        const Divider(color: Color.fromARGB(255, 212, 212, 212),
        height: 5,),
        Row(
          children: [
            Container(
              height: 50,
              width: 100,
              color: const Color.fromARGB(255, 248, 184, 205),
              child: const Center(child: Text("Email \nAddress :",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600),)),
          ),
           Container(
              height: 50,
              width: 240,
              color: const Color.fromARGB(255, 246, 243, 243),
              child: const Text("   contactadmin@gmail.com",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600),),
          ),
          ],
        ),
        const Divider(color: Color.fromARGB(255, 212, 212, 212),
        height: 5,),
        Row(
          children: [
            Container(
              height: 35,
              width: 100,
              color: const Color.fromARGB(255, 234, 205, 239),
              child: const Center(child: Text("Birth Date :",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600),)),
          ),
           Container(
              height: 35,
              width: 245,
              color: const Color.fromARGB(255, 246, 243, 243),
              child: const Text("   01-01-2000",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600),),
          ),
          ],
        ),
        const Divider(color: Color.fromARGB(255, 212, 212, 212),
        height: 5,),
        Row(
          children: [
            Container(
              height: 35,
              width: 100,
              color: const Color.fromARGB(255, 248, 184, 205),
              child: const Center(child: Text("Gender :",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600),)),
          ),
           Container(
              height: 35,
              width: 245,
              color: const Color.fromARGB(255, 246, 243, 243),
              child: const Text("   Female",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600),),
          ),
          ],
        ),
        
        ],
      ),
      ),
    );
  }
}