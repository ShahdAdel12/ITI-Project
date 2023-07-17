import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      // appBar:AppBar(backgroundColor:  const Color.fromARGB(255, 249, 249, 247),
      //   title: const Text("Settings Page",style:TextStyle(fontSize:25, color:Colors.purple)),
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
        child: const Column(
         children: [
          Text(
        "SETTINGS",
         style: TextStyle(fontSize:17),
        
      ),
         ],

        ),
        ),
          ),
        ),
    );
  }
}