import 'package:flutter/material.dart';

class ThirdPageDetails extends StatefulWidget {
  @override
  _ThirdPageDetailsState createState() => _ThirdPageDetailsState();
}

class _ThirdPageDetailsState extends State<ThirdPageDetails> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //show background
      extendBodyBehindAppBar: true,
      body: Container(
        //show full-size background
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('images/step3_image.JPG'),
            fit: BoxFit.cover,
          ),
        ),
        //show icons
        child: Container(
//          backgroundColor: Colors.white,
            //text: Text('Hopping...'),
            ),
      ),
    );
  }
}
