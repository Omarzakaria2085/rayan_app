import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rayan_app/hry.dart';
import 'package:rayan_app/noeme.dart';
import 'package:http/http.dart' as http;
import 'data.dart';
import 'main.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

Future<List<View>> fetchViews() async {
  final url = 'http://omarsultan682-001-site1.dtempurl.com/api/homepage';
  final http.Response res = await http.get(Uri.parse(url));

  if (res.statusCode == 200) {
    Iterable jsonData = jsonDecode(res.body);
    return jsonData.map((model) => View.fromJson(model)).toList();
  } else {
    throw Exception("Cannot fetch views");
  }
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<View>>(
        future: fetchViews(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) =>
                  Text(snapshot.data[index].itemId),
            );
          } else if (snapshot.hasError) {
            return Center(child: Text("${snapshot.error}"));
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
  }
}
/*
class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Hry()));
            },
            child: Container(
              child: Text('Enter your Text here'),
              color: Colors.red,
            ),
          ),
        ),
        SizedBox(height: 10.0),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {});
            },
            child: Container(
              child: Text('Enter your Text here'),
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}
*/
/*


import 'package:flutter/material.dart';
import 'package:rayan_app/hry.dart';
import 'package:rayan_app/noeme.dart';

import 'main.dart';
import 'data.dart';
// Main Function Start

// First Stateless Widget with MaterialApp Ends

// Main Stateful Widget Start
class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  // Title List Here

  @override
  Widget build(BuildContext context) {
    // MediaQuery to get Device Width
    double width = MediaQuery.of(context).size.width * 0.6;
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (index == 0)
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext v) => Noeme()));
            else
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext v) => Hry()));
          },
          // Card Which Holds Layout Of ListView Item
          child: Card(
            color: Colors.lightBlue,
            child: Row(
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  child: Image.asset(products[index].photoPath),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        products[index].name,
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: width,
                        child: Text(
                          "اسعارنا تبدأ من ${products[index].price}",
                          maxLines: 3,
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}









            if (index == 0)
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext v) => Noeme()));
            else
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext v) => Hry()));














// This is a block of Model Dialog 
showDialogFunc(context, img, title, desc) {
  return showDialog(
    context: context,
    builder: (context) {
      return Center(
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(15),
            height: 320,
            width: MediaQuery.of(context).size.width * 0.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    img,
                    width: 200,
                    height: 200,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  // width: 200,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      desc,
                      maxLines: 3,
                      style: TextStyle(fontSize: 15, color: Colors.grey[500]),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
*/