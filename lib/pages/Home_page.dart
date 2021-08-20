import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
 
 final int days = 30;
 final String name = "pradhyuman";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catelog ap  p"),
      ),
      
      body: Center(
          child: Container(
            child: Text("hello $days $name"),
          ),
        ),
        drawer: Drawer(),
      );
  }
}

   