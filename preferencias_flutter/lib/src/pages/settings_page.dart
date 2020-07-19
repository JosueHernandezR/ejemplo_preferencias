import 'package:flutter/material.dart';
import 'package:preferencias_flutter/src/widgets/menu_widget.dart';

class SettingPage extends StatefulWidget {
  //const HomePage({Key key}) : super(key: key);
  static final String routeName = 'settings';

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool _colorSecundario = false;
  int _genero = 1;
  String _nombre;
  TextEditingController _textController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textController = new TextEditingController(text: _nombre);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ajustes'),
        ),
        drawer: MenuWidget(),
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(5.0),
              child: Text(
                'Settings',
                style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(),
            SwitchListTile(
              value: _colorSecundario,
              onChanged: (value) {
                setState(() {
                  _colorSecundario = value;
                });
              },
              title: Text('Color secundario'),
            ),
            RadioListTile(
              value: 1,
              groupValue: _genero,
              onChanged: (value) {
                setState(() {
                  _genero = value;
                });
              },
              title: Text('Masculino'),
            ),
            RadioListTile(
              value: 2,
              groupValue: _genero,
              onChanged: (value) {
                setState(() {
                  _genero = value;
                });
              },
              title: Text('Femenino'),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: _textController,
                decoration: InputDecoration(
                  labelText: 'Nombre',
                  helperText: 'Nombre del usuario',
                ),
                onChanged: (value) {},
              ),
            )
          ],
        ));
  }
}
