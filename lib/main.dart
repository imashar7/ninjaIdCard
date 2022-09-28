import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: NinjaCard()));

class NinjaCard extends StatefulWidget {
  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text('Ninja ID Card'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                ninjaLevel += 1;
              });
            },
            child: Icon(Icons.add)),
        body: Padding(
            padding: EdgeInsets.all(40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://i.pinimg.com/originals/62/3a/a8/623aa8f9933ee9a286871bf6e0782538.jpg'),
                    radius: 50.0,
                  ),
                ),
                Divider(
                  height: 60.0,
                ),
                Text('NAME', style: TextStyle(color: Colors.grey[500])),
                SizedBox(
                  height: 10.0,
                ),
                Text('Ashar',
                    style: TextStyle(
                        color: Colors.amber,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 30.0),
                Text('CURRENT LEVEL',
                    style: TextStyle(color: Colors.grey[500])),
                SizedBox(height: 10.0),
                Text('$ninjaLevel',
                    style: TextStyle(
                        color: Colors.amber,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 30.0),
                Row(children: [
                  Icon(
                    Icons.mail,
                    color: Colors.grey[500],
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('ash@pucit.edu.pk',
                      style: TextStyle(color: Colors.amber))
                ]),
              ],
            )));
  }
}
