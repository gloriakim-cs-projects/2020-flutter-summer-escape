import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:summer_escape/screens/ExamplePage.dart';

class Destination {
  final String title;
  final String description;

  Destination(
    this.title,
    this.description,
  );
}

List<Destination> dest = [
  Destination('SAFARI', 'THE WILDEST'),
  Destination('OCEAN', 'THE COOLEST'),
  Destination('MOUNTAIN', 'THE HIGHEST'),
  Destination('FOREST', 'THE EARTH\'S LUNG'),
  Destination('NORTH POLE', 'THE SANTA\'S PLACE'),
  Destination('DESERT', 'THE PEACEFUL PLACE'),
];

class FirstPageDetails extends StatefulWidget {
  @override
  _FirstPageDetailsState createState() => _FirstPageDetailsState();
}

class _FirstPageDetailsState extends State<FirstPageDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //show background behind the app bar
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: Expanded(
          child: ListView.builder(
            itemCount: dest.length,
            itemBuilder: (context, index) {
              String imagename = dest[index].title;
              return Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                      image: AssetImage('images/$imagename.jpg'),
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.6), BlendMode.dstATop),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: ListTile(
                      title: Text(
                        dest[index].title,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Shrikhand',
                          fontSize: 40,
                        ),
                      ),
                      subtitle: Text(
                        dest[index].description,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Shrikhand',
                          fontSize: 20,
                        ),
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right,
                          size: 60.0, color: Colors.white),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ExamplePage(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
