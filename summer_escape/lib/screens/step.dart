import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:summer_escape/components/step_one_details.dart';

class StepOnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Icon(
              Icons.widgets,
              color: Colors.blue,
              size: 100,
            ),
            SizedBox(height: 20),
            Text('Step 1.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                  fontFamily: 'Shrikhand',
                )),
            SizedBox(height: 20),
            Text('CHOOSE\nYOUR\nDESTINATION',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.blue,
                  fontFamily: 'Shrikhand',
                )),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FirstPageDetails()),
                  );
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0)),
                color: Colors.blue,
                child: Text(
                  'OKAY!',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontFamily: 'Shrikhand',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
