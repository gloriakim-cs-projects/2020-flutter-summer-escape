import 'dart:ui'; //text shadow
import 'package:flutter/material.dart';
import 'package:summer_escape/screens/credits.dart';
import 'package:summer_escape/screens/settings.dart';

import 'step_one.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            image: AssetImage('images/background_image.JPG'),
            fit: BoxFit.cover,
          ),
        ),
        //show icons
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: Text(
                  'SUMMER ESCAPE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 70.0,
                    color: Color(0xff6BBCED),
                    fontFamily: 'Shrikhand',
                    shadows: <Shadow>[
                      //actual shadow
                      Shadow(
                        offset: Offset(5.0, 5.0),
                        color: Color(0xFF01579B),
                      ),
                      //outline
                      Shadow(
                          // bottomLeft
                          offset: Offset(-1.5, -1.5),
                          color: Colors.white),
                      Shadow(
                          // bottomRight
                          offset: Offset(1.5, -1.5),
                          color: Colors.white),
                      Shadow(
                          // topRight
                          offset: Offset(1.5, 1.5),
                          color: Colors.white),
                      Shadow(
                          // topLeft
                          offset: Offset(-1.5, 1.5),
                          color: Colors.white),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: MaterialButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CreditsPage()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: const Text('CREDITS',
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xff6BBCED),
                                fontFamily: 'CarterOne',
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 50),
                      child: MaterialButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SettingsPage()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: const Text('SETTINGS',
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xff6BBCED),
                                fontFamily: 'CarterOne',
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 50),
                      child: MaterialButton(
                        color: Color(0xff6BBCED),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => StepOnePage()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: const Text('START',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontFamily: 'CarterOne',
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
//              Padding(
//                padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
//                child: MaterialButton(
//                  color: Colors.white,
//                  shape: RoundedRectangleBorder(
//                      borderRadius: BorderRadius.circular(100.0)),
//                  onPressed: () {
//                    Navigator.push(
//                      context,
//                      MaterialPageRoute(builder: (context) => SettingsPage()),
//                    );
//                  },
//                  child: Padding(
//                    padding: const EdgeInsets.all(10.0),
//                    child: const Text('SETTINGS',
//                        style: TextStyle(
//                          fontSize: 30,
//                          color: Color(0xFF01579B),
//                          fontFamily: 'CarterOne',
//                        )),
//                  ),
//                ),
//              ),
//              Padding(
//                padding: const EdgeInsets.fromLTRB(20, 0, 20, 40),
//                child: MaterialButton(
//                  color: Colors.white,
//                  shape: RoundedRectangleBorder(
//                      borderRadius: BorderRadius.circular(100.0)),
//                  onPressed: () {
//                    Navigator.push(
//                      context,
//                      MaterialPageRoute(builder: (context) => SettingsPage()),
//                    );
//                  },
//                  child: Padding(
//                    padding: const EdgeInsets.all(10.0),
//                    child: const Text('SETTINGS',
//                        style: TextStyle(
//                          fontSize: 30,
//                          color: Color(0xFF01579B),
//                          fontFamily: 'CarterOne',
//                        )),
//                  ),
//                ),
//              ),
            ],
          ),
        ),
      ),
    );
  }
}
