import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CreditsPage extends StatelessWidget {
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
            //TODO: opacity!
            fit: BoxFit.cover,
          ),
        ),
        //show icons
        child: Expanded(
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,20,0,0),
                  child: Text(
                    'CREDITS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.white,
                      fontFamily: 'Shrikhand',
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.red,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Text('PHOTOS',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontFamily: 'CarterOne',
                              )),
                          RaisedButton(
                            onPressed: _launchURL,
                            child: Text('Photo by AJ Robbie on Unsplash'),
                          ),

                        ],
                      ),
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

_launchURL() async {
  const url = 'https://unsplash.com/photos/BuQ1RZckYW4';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}