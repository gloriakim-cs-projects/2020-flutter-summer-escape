import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:summer_escape/screens/step_two_details.dart';

class CameraDetailsPage extends StatefulWidget {
  final String capturedImage;
  CameraDetailsPage(this.capturedImage);
  @override
  _CameraDetailsPageState createState() => _CameraDetailsPageState();
}

class _CameraDetailsPageState extends State<CameraDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //show full-size background
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('images/cong_image.JPG'),
            fit: BoxFit.cover,
          ),
        ),
        //show icons
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 130, 10, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'You just pakced',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'CarterOne',
                    fontSize: 30,
                    shadows: <Shadow>[
                      //actual shadow
                      Shadow(
                        offset: Offset(2.0, 2.0),
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  widget.capturedImage + '!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Shrikhand',
                    fontSize: 50,
                    shadows: <Shadow>[
                      //actual shadow
                      Shadow(
                        offset: Offset(5.0, 5.0),
                        color: Colors.blue,
                      ),
                      //outline
                      Shadow(
                          // bottomLeft
                          offset: Offset(-1.5, -1.5),
                          color: Colors.blue),
                      Shadow(
                          // bottomRight
                          offset: Offset(1.5, -1.5),
                          color: Colors.blue),
                      Shadow(
                          // topRight
                          offset: Offset(1.5, 1.5),
                          color: Colors.blue),
                      Shadow(
                          // topLeft
                          offset: Offset(-1.5, 1.5),
                          color: Colors.blue),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        MaterialButton(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100.0)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => StepTwoDetailsPage()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: const Text('CLOSE',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xff6BBCED),
                                  fontFamily: 'Shrikhand',
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
