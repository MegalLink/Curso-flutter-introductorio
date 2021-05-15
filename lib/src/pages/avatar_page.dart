import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
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
        child: FadeInImage(
          placeholder: AssetImage('assets/images/default-image.png'),
          image: NetworkImage(
              'https://images.pexels.com/photos/3460478/pexels-photo-3460478.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260'),
        ),
      ),
    );
  }
}
