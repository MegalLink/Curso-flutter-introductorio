import 'package:contador_app/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes"),
        elevation: 10.0,
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data) {
    print(data);
    List<ListTile> lista = new List();
    data.forEach((element) => {
          lista.add(ListTile(
            leading: Icon(
              Icons.account_circle,
              color: Colors.blue,
            ),
            title: Text(element['texto']),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              color: Colors.blue,
            ),
          ))
        });

    return lista;
  }
}
