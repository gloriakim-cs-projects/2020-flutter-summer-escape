import 'package:flutter/material.dart';

class StepTwoDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Icon(
              Icons.search,
              color: Colors.blue,
              size: 100,
            ),
            SizedBox(height: 20),
            Text(widget.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                  fontFamily: 'Shrikhand',
                )),
            SizedBox(height: 20),
            Text(widget.description,
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
