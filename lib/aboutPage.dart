import 'package:flutter/material.dart';

class page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(
          "V I D E O G A M E S",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Jersey25'
          ),
        ),
      ),
      body: Column(
        children: [
          Text("data")
        ],
      ),
    );
  }
}