import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Destionation {
  final String title;
  final String description;
  Destionation(this.title, this.description);
}

List<Destionation> dest = [
  Destionation('SAFARI', 'THE WILDEST'),
  Destionation('OCEAN', 'THE COOLEST'),
  Destionation('MOUNTAIN', 'THE HIGHEST'),
  Destionation('FOREST', 'THE EARTH\'S LUNG'),
  Destionation('NORTH POLE', 'THE SANTA\'S PLACE'),
  Destionation('DESERT', 'THE PEACEFUL PLACE'),
];

class FirstPageDetails extends StatefulWidget {
  @override
  _FirstPageDetailsState createState() => _FirstPageDetailsState();
}

class _FirstPageDetailsState extends State<FirstPageDetails> {
  //for search bar's text edit
  TextEditingController _textController = TextEditingController();

  onItemChanged(String value) {
    setState(() {
      dest = dest
          .where((string) =>
              string.title.toLowerCase().contains(value.toLowerCase()) ||
              string.description.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Theme(
          data: Theme.of(context).copyWith(accentColor: Colors.transparent),
          child: TextField(
            style: TextStyle(color: Colors.black),
            controller: _textController,
            decoration: InputDecoration(
              prefixIcon: new Icon(Icons.search, color: Colors.black),
              hintText: 'Search Here',
              hintStyle: TextStyle(fontSize: 20.0, color: Colors.black),
            ),
            onChanged: onItemChanged,
          ),
        ),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      //show background behind the app bar
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: Container(
          color: Colors.white,
          //child: MyListView(),
          child: MyListView(),
        ),
      ),
    );
  }
}

ListView MyListView() {
  String imagename;
  return ListView.builder(
    itemCount: dest.length,
    itemBuilder: (context, index) {
      imagename = dest[index].title;
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
//                    builder: (context) => DetailScreen(
//                        recyclable: recyclable[index],
//                        previousScreen: 'LISTVIEW'),
                      ),
                );
              },
            ),
          ),
        ),
      );
    },
  );
}
