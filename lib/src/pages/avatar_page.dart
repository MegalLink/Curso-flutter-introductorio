import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatars'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.home,
          color: Colors.blue,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
