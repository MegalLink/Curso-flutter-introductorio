import 'package:flutter/material.dart';

class InputsPage extends StatefulWidget {
  @override
  _InputsPageState createState() => _InputsPageState();
}

class _InputsPageState extends State<InputsPage> {
  String _nombre = '';
  String _email = '';
  String _password = '';
  String _fecha = '';
  bool _visiblePassword = false;
  TextEditingController _inputControllerFecha = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: [
          _crearTextInput(),
          Divider(),
          _crearEmailInput(),
          Divider(),
          _crearPasswordInput(),
          Divider(),
          _crearFechaInput(),
          Divider(),
          _crearPersona()
        ],
      ),
    );
  }

  Widget _crearTextInput() {
    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          counter: Text('Cantidad de letras'),
          hintText: 'Nombre de la persona',
          labelText: 'Nombre',
          helperText: 'Primer nombre',
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle)),
      onChanged: (valor) {
        setState(() {
          _nombre = valor;
        });
      },
    );
  }

  Widget _crearEmailInput() {
    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          counter: Text('@gmail.com'),
          hintText: 'Ingrese su email',
          labelText: 'Email',
          helperText: 'Correo valido',
          suffixIcon: Icon(Icons.email),
          icon: Icon(Icons.alternate_email)),
      onChanged: (valor) {
        setState(() {
          _email = valor;
        });
      },
    );
  }

  Widget _crearPasswordInput() {
    return TextField(
      // autofocus: true,
      obscureText: _visiblePassword,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          counter: Text('Password length'),
          hintText: 'Password',
          labelText: 'Password',
          helperText: 'Password con 6 o más caracteres',
          suffixIcon: IconButton(
            icon: _setPasswordIcon(),
            onPressed: () {
              setState(() {
                _visiblePassword = !_visiblePassword;
              });
            },
          ),
          icon: Icon(Icons.lock)),
      onChanged: (valor) {
        setState(() {
          _password = valor;
        });
      },
    );
  }

  Widget _crearFechaInput() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      controller: _inputControllerFecha,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Fecha de nacimiento',
          labelText: 'Fecha de nacimiento',
          suffixIcon: Icon(Icons.perm_contact_calendar),
          icon: Icon(Icons.calendar_today)),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2020),
        locale: Locale('es', 'ES'),
        lastDate: new DateTime(2025));
    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
        _inputControllerFecha.text = _fecha;
      });
    }
  }

  Widget _setPasswordIcon() {
    return _visiblePassword
        ? Icon(Icons.visibility_off)
        : Icon(Icons.visibility);
  }

  Widget _crearPersona() {
    return ListTile(
      title: Text('Su nombre es $_nombre'),
      subtitle: Text('Su correo es $_email'),
    );
  }
}
