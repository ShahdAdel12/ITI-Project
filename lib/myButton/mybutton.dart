import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final String label;
  final Color textcolor;
  final Color bgcolor;
  
  const MyButton({super.key, required this.label, required this.textcolor, required this.bgcolor});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return  Padding(

      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 45,
        width: 200,
        decoration: BoxDecoration(
          color: widget.bgcolor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            widget.label,
            style: TextStyle(color: widget.textcolor),
          )
        
        
        ),
        

      ),
      
    );
  }
}