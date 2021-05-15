import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      child: Column(children: [
        ListTile(
            title: Text('Soy el titulo de la tarjeta'),
            subtitle: Text(
                'Etiam ultricies nisi vel augue. Nulla facilisi. Etiam sit amet orci eget eros faucibus tincidunt.'),
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {},
              child: Text('Cancelar'),
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {},
              child: Text(
                'Ok',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              width: 10,
            )
          ],
        )
      ]),
    );
  }

  Widget _cardTipo2() {
    return Card(
      child: Column(
        children: [
          FadeInImage(
            fadeInDuration: Duration(milliseconds: 200),
            placeholder: AssetImage('assets/images/default-image.png'),
            image: NetworkImage(
                'https://images.pexels.com/photos/747964/pexels-photo-747964.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260'),
            fit: BoxFit.contain,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Lorem ipsum dolor'),
          )
        ],
      ),
    );
  }
}
