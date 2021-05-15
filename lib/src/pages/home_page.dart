import 'package:contador_app/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';
import '../utils/icono_string_utils.dart';

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
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    List<ListTile> lista = [];
    data.forEach((element) => {
          lista.add(ListTile(
            leading: getIcon(element['icon']),
            title: Text(element['texto']),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              color: Colors.blue,
            ),
            onTap: () {
              Navigator.pushNamed(context, element['ruta']);
            },
          ))
        });

    return lista;
  }
}
