import 'package:flutter/material.dart';
import 'package:summer_escape/components/checklist.dart';
import 'package:summer_escape/components/camera.dart';
import 'package:summer_escape/screens/step.dart';
import 'package:summer_escape/screens/step_three_details.dart';

class StepTwoDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyMaterialButton(
                  'CAMERA',
                  58288,
                  CameraPage(),
                ),
                SizedBox(
                  width: 15.0,
                ),
                MyMaterialButton(
                  'CHECKLIST',
                  57445,
                  CheckListPage(),
                ),
              ],
            ),
            Image.asset('images/suitcase.png'),

            SizedBox(height: 15),
            //bottom button
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StepPage(
                        57749,
                        'STEP 3.',
                        'HOP\nON THE\nBOARD.',
                        ThirdPageDetails(),
                      ),
                    ),
                  );
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0)),
                color: Colors.white,
                child: Text(
                  'Finished',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.blue,
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

class MyMaterialButton extends StatefulWidget {
  final String iconName;
  final int iconCode;
  final Widget screenPage;
  MyMaterialButton(this.iconName, this.iconCode, this.screenPage);

  @override
  _MyMaterialButtonState createState() => _MyMaterialButtonState();
}

class _MyMaterialButtonState extends State<MyMaterialButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 130.0,
      minWidth: 130.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => widget.screenPage),
        );
      },
      color: Colors.black.withOpacity(0.5),
      padding: EdgeInsets.all(15.0),
      child: Column(
        // Replace with a Row for horizontal icon + text
        children: <Widget>[
          Icon(
            IconData(widget.iconCode, fontFamily: 'MaterialIcons'),
            size: 60.0,
            color: Colors.white,
          ),
          Text(
            widget.iconName,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'CarterOne',
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
