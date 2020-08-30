import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  //variable for checkbox
  Map<String, bool> values = {
    'Light Mode': false,
    'Dark Mode': false,
  };
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //show background
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'SETTINGS',
          style: TextStyle(
            decoration: TextDecoration.underline,
            fontSize: 50.0,
            color: Colors.white,
            fontFamily: 'Shrikhand',
          ),
        ),
      ),
      body: Container(
        //show full-size background
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('images/background_image.JPG'),
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.6), BlendMode.dstATop),
            fit: BoxFit.cover,
          ),
        ),

        child: Padding(
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
      ),
    );
  }
}
