import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import 'dart:ui';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  SpeedDial buildSpeedDial() {
    return SpeedDial(
      animatedIcon: AnimatedIcons.menu_close,
      animatedIconTheme: IconThemeData(size: 28.0),
      backgroundColor: Colors.black45,
      visible: true,
      curve: Curves.bounceInOut,
      children: [
        SpeedDialChild(
          child: Icon(Icons.chrome_reader_mode, color: Colors.white),
          backgroundColor: Colors.black45,
          onTap: () => print('Pressed Read Later'),
          label: 'Read',
          labelStyle:
              TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          labelBackgroundColor: Colors.black,
        ),
        SpeedDialChild(
          child: Icon(Icons.create, color: Colors.white),
          backgroundColor: Colors.black45,
          onTap: () => print('Pressed Write'),
          label: 'Write',
          labelStyle:
              TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          labelBackgroundColor: Colors.black,
        ),
        SpeedDialChild(
          child: Icon(Icons.laptop_chromebook, color: Colors.white),
          backgroundColor: Colors.black45,
          onTap: () => print('Pressed Code'),
          label: 'Code',
          labelStyle:
              TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          labelBackgroundColor: Colors.black,
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Vasco da Gama'),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Center(
            child: Image.network(
                'https://logodownload.org/wp-content/uploads/2016/09/vasco-logo-0.png'),
          ),
        ),
        floatingActionButton: buildSpeedDial(),
      ),
    );
  }
}
