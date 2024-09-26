import 'package:flutter/material.dart';
import 'dart:math';
import 'package:first_games/aboutPage.dart';

void main() {
  runApp(start());
}


class imagePage extends StatefulWidget {
  const imagePage({super.key});

  @override
  State<imagePage> createState() => _imagePageState();
}

class _imagePageState extends State<imagePage> {
  int LeftImageNumber= 1;
  int RightImageNumber = 2;
  String startText = "P R E S S  I M A G E";

  void ChangeImage(){
    LeftImageNumber = Random().nextInt(8) + 1;
    RightImageNumber = Random().nextInt(8) + 1;
    LeftImageNumber == RightImageNumber ? startText = "S U C C E S S 😲 . ." : startText = "T R Y   A G A I N 😒 . .";
  }
 @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(startText,
              style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontFamily: 'Jersey25'
              ),
            ),

        Row(
          children: [
            Expanded(
              child: TextButton(onPressed: (){
                setState(() {
                    ChangeImage();
                });
              }, child: Image.asset('images/image-$LeftImageNumber.png'),)
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    ChangeImage();
                });
                },
                child: Image.asset('images/image-$RightImageNumber.png')
                ),
            )
          ],
        )
      ],

    );
  }
}



class start extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        backgroundColor: Colors.black87,
      actions: [
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => page2()));
            },
            icon: Icon(Icons.person,color: Colors.white,))
      ],   
        title: Text(
          "V I D E O G A M E S",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Jersey25'
          ),
        ),
      ),
    body: imagePage(),
    ),
  );
  }
}