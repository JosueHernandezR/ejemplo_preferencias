import 'package:flutter/material.dart';
import 'package:preferencias_flutter/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {
  //const HomePage({Key key}) : super(key: key);

  static final String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de Usuario'),
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Color secundario:'),
          Divider(),
          Text('Género:'),
          Divider(),
          Text('Nombre Usuario'),
          Divider()
        ],
      ),
    );
  }
}
