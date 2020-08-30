import 'package:flutter/material.dart';
import 'package:summer_escape/screens/step.dart';

class StepFourDetailsPage extends StatelessWidget {
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
            image: AssetImage('images/landing_image.JPG'),
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
                              builder: (context) => StepPage(
                                58688,
                                'STEP 4.',
                                'ENJOY\nYOUR\nVACATION.',
                                StepFourDetailsPage(),
                              ),
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: const Text(
                            'Landing...',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.blue,
                              fontFamily: 'Shrikhand',
                            ),
                          ),
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
