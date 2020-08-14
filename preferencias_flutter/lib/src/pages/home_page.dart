import 'package:flutter/material.dart';
import 'package:preferencias_flutter/src/share_prefs/prefrencias_usuarios.dart';
import 'package:preferencias_flutter/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {
  //const HomePage({Key key}) : super(key: key);

  static final String routeName = 'home';
  PreferenciasUsuario prefs = PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {
    prefs.ultimaPagina = HomePage.routeName;
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de Usuario'),
        backgroundColor: (prefs.colorSecundario ? Colors.black : Colors.blue),
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Color secundario: ${prefs.colorSecundario}'),
          Divider(),
          Text('Género: ${prefs.genero}'),
          Divider(),
          Text('Nombre Usuario: ${prefs.nombreUsuario}'),
          Divider()
        ],
      ),
    );
  }
}
