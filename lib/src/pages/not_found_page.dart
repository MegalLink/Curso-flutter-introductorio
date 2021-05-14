import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NotFound'),
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
