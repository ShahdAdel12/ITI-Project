import 'package:flutter/material.dart';
import 'package:login/views/utils.dart';

import 'login.dart';

// ignore: camel_case_types
class StartPage extends StatefulWidget {
  // final String email;
  const StartPage({
  super.key, 
  // required this.email
  });

  @override
  State<StartPage> createState() => _StartPageState();
}

// ignore: camel_case_types
class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
   final _formKey = GlobalKey<FormState>();
   return Scaffold(
   
  //  appBar:AppBar(backgroundColor: const Color.fromARGB(255, 249, 249, 247),

        
        // ),
        body: SingleChildScrollView( 
          child: Container(
            height: 900,
            width: 450,
          decoration:  const BoxDecoration(
            image: DecorationImage(image: AssetImage("images/home.gif"),
             fit: BoxFit.cover),
            
            ), 
        child: Form(
        key: _formKey,
        child: Column(
      
        
         children: [
      //   Text( widget.email, 

        
      // ),
      const SizedBox(
        height: 50,
        
      ),
           const Text(
             "Don't be upset,                                                        let's find your appropriate device!",
             style:TextStyle(fontSize:20, color:Colors.white,fontStyle: FontStyle.italic),
             textAlign: TextAlign.center,
           ),
           const SizedBox(
           height: 690,
        ),
           ElevatedButton(
            onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>   const LoginPage(email:"",)),);

            }, 
            
            style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 249, 249, 247),
            elevation:5,
            
            minimumSize: const Size(100.0,40.0),
            ),
             child: const Text("Start",style:TextStyle(fontSize:25, color:Colors.black,fontStyle: FontStyle.italic)),
              
           
           
           
           ),
        
         ]
        ),
            ),
      ),
        ),
   );
  }
}