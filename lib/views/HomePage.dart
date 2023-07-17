import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/views/tdl_cubit.dart';

class Home extends StatefulWidget {
  
  const Home({
    super.key,
     
    }
  );

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //  List<TdlModel> TDL = [];
  //  bool isLoading = true;

  //  getTDL()async{
  //   TDL = await TodolistService().getTDLData();
  //   isLoading = false;
  //   setState(() {});
  //  }


  @override
  // void initState(){
  //   super.initState();
  //   getTDL();
  // }
  Widget build(BuildContext context) {
    return BlocProvider(
    
      create:(context) => TdlCubit(),
      child: BlocConsumer<TdlCubit ,TdlState>(
      builder: (context,State) {
       if (State is TdlLoading){
        return Center(
      child: CircularProgressIndicator(),
          );
       } 
       else if (State is TdlSuccess)
       {
        return ListView.builder(
        itemCount: context.watch<TdlCubit>().TDL.length,
        itemBuilder: (BuildContext context, index){
        return ListTile(
           title: Text(context.watch<TdlCubit>().TDL[index].title),
           subtitle: Text(context.watch<TdlCubit>().TDL[index].completed.toString()) ,
           trailing: Icon(Icons.person),

        );
       });
       }
       else {
        return Center(
          child: Text("Error in this screen"),
        );
       }


      },
      
      listener: (context,State){
        if(State is TdlError){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Hello we have error")
          
          
          ));
        }
      },
      
      
      
      
      
        ),
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

   