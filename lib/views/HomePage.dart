import 'package:flutter/material.dart';
import 'package:login/models/todolistmodel.dart';
import 'package:login/services/tdl_service.dart';

class Home extends StatefulWidget {
  
  const Home({
    super.key,
     
    }
  );

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
   List<TdlModel> TDL = [];
   bool isLoading = true;

   getTDL()async{
    TDL = await TodolistService().getTDLData();
    isLoading = false;
    setState(() {});
   }





  @override
  void initState(){
    super.initState();
    getTDL();
  }
  Widget build(BuildContext context) {
    return 
    isLoading ? 
    const Center(
      child: CircularProgressIndicator(),
    )
    : 
    ListView.builder(
      itemCount: TDL.length,
      
      itemBuilder: (BuildContext context, index){
        return ListTile(
           title: Text(TDL[index].title),
           subtitle: Text(TDL[index].completed.toString()) ,
           trailing: Icon(Icons.person),

        );

      }
    
    
    
    
    );
    
    // final _formKey = GlobalKey<FormState>();
    // return Scaffold(

      
    //   // appBar:AppBar(backgroundColor:  const Color.fromARGB(255, 249, 249, 247),
    //   //   title: const Text("Home Page",style:TextStyle(fontSize:25, color:Colors.purple)),
    //   //   centerTitle: true,),

    //     body: SingleChildScrollView( 
    //       child:Container(
    //          height: 800,
    //         width: 450,
    //       decoration:  const BoxDecoration(
    //         image: DecorationImage(image: AssetImage("images/p.jpg"),
    //          fit: BoxFit.cover),
            
    //         ), 
    //     child: Form(
    //     key: _formKey,
    //     child: const Column(
    //      children: [
          
    //       Text(
    //     "Home",
    //      style: TextStyle(fontSize:17),
        
    //   ),
    //      ],

    //     ),
    //     ),
    //       ),
    //     ),
    // );
  }
  
  
}