import 'package:flutter/material.dart';
import 'package:login/views/utils.dart';

class Profile extends StatefulWidget {
  
    const Profile({
    super.key,
   
  });

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
 
  
  
  @override
    void initState(){
    super.initState();
    getEmail();
  }
  String userEmail ="";
  
  Widget build(BuildContext context) {
   final _formKey = GlobalKey<FormState>();
    return Scaffold(
      // appBar:AppBar(backgroundColor:  const Color.fromARGB(255, 249, 249, 247),
      //   title: const Text("Profile Page",style:TextStyle(fontSize:25, color:Colors.purple)),
      //   centerTitle: true,),

        body: SingleChildScrollView( 
          child:Container(
             height: 800,
            width: 450,
          decoration:  const BoxDecoration(
            image: DecorationImage(image: AssetImage("images/p.jpg"),
             fit: BoxFit.cover),
            
            ), 
        child: Form(
        key: _formKey,
        child:  Column(
         children: [
        Text( 
        userEmail,
         style: TextStyle(fontSize:17),
        
      ),
         ],

        ),
        ),
          ),
        ),
    );
    
    
    
  }
  getUserEmail() async{
     userEmail = await getEmail();
     setState(() {
       
     });
  
}
}

