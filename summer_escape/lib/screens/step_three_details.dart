import 'package:flutter/material.dart';
import 'package:summer_escape/screens/step_three_details_more.dart';

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
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: MaterialButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => StepThreeDetailsMore()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: const Text('HOPPING...',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.blue,
                                fontFamily: 'Shrikhand',
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
