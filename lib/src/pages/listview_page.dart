import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  final lista = ['Jeferson', 'Pepito', 'Alexandra', 'Melani', 'Felipe'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView and ListTile'),
      ),
      body: ListView(
        children: _crearLista(),
      ),
    );
  }

  List<Widget> _crearLista() {
    return lista.map((nombre) {
      return Column(
        children: [
          ListTile(
            title: Text(nombre),
            subtitle: Text('Buenas Tardes'),
            leading: Icon(Icons.access_alarm),
            trailing: Icon(Icons.access_time_rounded),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
