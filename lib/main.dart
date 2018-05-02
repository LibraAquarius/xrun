import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  void _airDress() {
    return;
  }
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'XRun',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(
            'XRun',
            style: new TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.playlist_play),
              tooltip: 'Air it',
              onPressed: _airDress,
            ),
            new IconButton(
              icon: new Icon(Icons.playlist_add),
              tooltip: 'Restitch it',
              onPressed: _airDress,
            ),
            new IconButton(
              icon: new Icon(Icons.playlist_add_check),
              tooltip: 'Repair it',
              onPressed: _airDress,
            ),
          ],
        ),
        body: new Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("images/XRun_bg.jpg"),
              fit: BoxFit.fitHeight,
            ),
          ),
          child: null,
        ),
        bottomNavigationBar: new BottomNavigationBar (
          items: [
            new BottomNavigationBarItem(
              title: new Text(
                'Current',
              ),
              icon: new Icon(Icons.directions_run),
            ),
            new BottomNavigationBarItem(
              title: new Text(
                'History',
              ),
              icon: new Icon(Icons.trending_up),
            )
          ],
        ),
      ),
    );
  }
}