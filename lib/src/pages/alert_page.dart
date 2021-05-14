import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alertas'),
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
