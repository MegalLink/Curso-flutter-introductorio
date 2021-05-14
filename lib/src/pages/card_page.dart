import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
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
