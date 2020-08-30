import 'package:flutter/material.dart';

class CheckListPage extends StatefulWidget {
  @override
  _CheckListPageState createState() => _CheckListPageState();
}

class _CheckListPageState extends State<CheckListPage> {
  //variable for checkbox
  Map<String, bool> values = {
    'Towel': false,
    'Clothes': false,
    'Hats': false,
    'Shoes': false,
    'Toothbrush': false,
    'Cell Phone': false,
    'Pillow': false,
    'Cash': false,
    'Passport': false,
    'Brush': false,
  };
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //show background
      backgroundColor: Colors.blue,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'CHECKLIST',
          style: TextStyle(
            decoration: TextDecoration.underline,
            fontSize: 50.0,
            color: Colors.white,
            fontFamily: 'Shrikhand',
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: ListView(
          children: values.keys.map((String key) {
            return new CheckboxListTile(
              //TODO (Optional): Build the actual mode changes
              title: Text(
                key,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: 'CarterOne',
                ),
              ),
              value: values[key],
              onChanged: (bool value) {
                setState(() {
                  values[key] = value;
                });
              },
              //leading checkbox
              controlAffinity: ListTileControlAffinity.leading,
              checkColor: Colors.blue,
              activeColor: Colors.white,
            );
          }).toList(),
        ),
      ),
    );
  }
}
