import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CreditsPage extends StatelessWidget {
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
          'CREDITS',
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
        //show icons
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
            child: SingleChildScrollView(
              child: Stack(
                children: <Widget>[
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text('PHOTOS',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontFamily: 'Shrikhand',
                            )),
                        MyButton.getWebpage(
                            context,
                            '- Safari Photo by AJ Robbie on Unsplash',
                            'https://unsplash.com/photos/BuQ1RZckYW4'),
                        MyButton.getWebpage(
                            context,
                            '- Ocean Photo by Sean O. on Unsplash',
                            'https://unsplash.com/photos/KMn4VEeEPR8'),
                        MyButton.getWebpage(
                            context,
                            '- Mountain Photo by Kalen Emsley on Unsplash',
                            'https://unsplash.com/photos/Bkci_8qcdvQ'),
                        MyButton.getWebpage(
                            context,
                            '- Forest Photo by Imat Bagja Gumilar on Unsplash',
                            'https://unsplash.com/photos/jFCViYFYcus'),
                        SizedBox(height: 10),
                        const Text('Illustrations',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontFamily: 'Shrikhand',
                            )),
                        MyButton.getWebpage(
                            context,
                            '- Escalator Vectors by Vecteezy',
                            'https://www.vecteezy.com/vector-art/144491-escalator-airport-free-vector'),
                        MyButton.getWebpage(
                            context,
                            '- Open Suitcase Vectors by Vecteezy',
                            'https://www.vecteezy.com/vector-art/94571-free-open-suitcase-vector'),
                        MyButton.getWebpage(
                            context,
                            '- Pilot Vectors by Vecteezy',
                            'https://www.vecteezy.com/vector-art/106204-vector-plane-window'),
                        MyButton.getWebpage(
                            context,
                            '- Pool Vectors by Vecteezy',
                            'https://www.vecteezy.com/vector-art/210841-vintage-swimming-pool-vector'),
                        MyButton.getWebpage(
                            context,
                            '- Suitcase Vectors by Vecteezy',
                            'https://www.vecteezy.com/vector-art/215850-luggage-vector'),
                        SizedBox(height: 10),
                        const Text('Icons',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontFamily: 'Shrikhand',
                            )),
                        MyButton.getWebpage(
                            context,
                            '- Earth, Suitcase, Airplane, Vacation Icons\ by Freepik from flaticon.com',
                            'https://www.flaticon.com/authors/freepik'),
                        MyButton.getWebpage(
                            context,
                            '- Speaker Icon by Pixel perfect from flaticon.com',
                            'https://www.flaticon.com/authors/pixel-perfect'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyButton {
  static getWebpage(BuildContext context, String string, String url) {
    return FlatButton(
//      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      onPressed: () => _launchURL(url),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          string,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontFamily: 'CarterOne',
          ),
        ),
      ),
    );
  }
}

_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
