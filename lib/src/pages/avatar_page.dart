import 'dart:math';

import 'package:flutter/material.dart';

class AvatarPage extends StatefulWidget {
  @override
  _AvatarPageState createState() => _AvatarPageState();
}

class _AvatarPageState extends State<AvatarPage> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.pink;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatars'),
        actions: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/2804282/pexels-photo-2804282.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
                scale: 0.1),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0, left: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.redAccent,
            ),
          ),
        ],
      ),
      body: Center(
          child: AnimatedContainer(
        width: _width,
        height: _height,
        decoration: BoxDecoration(color: _color, borderRadius: _borderRadius),
        duration: Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: _animateContainer,
      ),
    );
  }

  void _animateContainer() {
    final random = Random();
    setState(() {
      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(
          random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }
}
