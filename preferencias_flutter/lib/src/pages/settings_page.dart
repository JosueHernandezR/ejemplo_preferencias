import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  //const HomePage({Key key}) : super(key: key);
  static final String routeName = 'settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajustes'),
      ),
      body: Center(
        child: Text('Ajustes'),
      ),
    );
  }
}
