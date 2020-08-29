import 'package:flutter/material.dart';
import 'package:summer_escape/screens/credits.dart';
import 'package:summer_escape/screens/settings.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //show background behind the app bar
      extendBodyBehindAppBar: true,
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
        //show icons
        child: Expanded(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
//            crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Summer Escape',
                  style: TextStyle(
                    fontSize: 70.0,
                    color: Colors.white,
                    fontFamily: 'Shrikhand',
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
                                  color: Color(0xFF01579B),
                                  fontFamily: 'CarterOne',
                                )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 50),
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
                                  color: Color(0xFF01579B),
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
      ),
    );
  }
}
