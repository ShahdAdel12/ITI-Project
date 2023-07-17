import 'package:flutter/material.dart';
import 'package:login/views/profilePage.dart';
import 'package:login/views/settingPage.dart';

import 'HomePage.dart';

class NavBarPage extends StatefulWidget {
  final String email;
  const NavBarPage({
    super.key,
    required this.email
  
  });

  @override
  State<NavBarPage> createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
   
  int _selectedIndex =0;
  List <Widget> Page =[
    Home(),
    Profile(),
    Settings(),

  ];
  // String userEmail ="";

  // @override
  // void initstate (){
  //    super.initState();
  //    getEmail();

  // }
 
 
  Widget build(BuildContext context) {
    //final _formKey = GlobalKey<FormState>();
    return Scaffold(
      
      // appBar:AppBar(backgroundColor:  const Color.fromARGB(255, 249, 249, 247),
      //   title: const Text("Home Page",style:TextStyle(fontSize:25, color:Colors.purple)),
      //   centerTitle: true,),

         bottomNavigationBar:BottomNavigationBar (
          currentIndex: _selectedIndex,
          selectedFontSize: 15,
          iconSize: 30,
          selectedItemColor: Colors.lightBlue,
        items:const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),

        ],
        onTap: (pageIndex){
            setState(() {
           _selectedIndex = pageIndex;
          });
        },
       
       ),
        
        body: Page.elementAt(_selectedIndex),
        
        
        
       
    );
  }
  // getEmail()async{
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  // return prefs.getString("email") ?? "--";
  // }
 
   
}