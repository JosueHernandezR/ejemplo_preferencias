import 'package:flutter/material.dart';
import 'package:preferencias_flutter/src/pages/home_page.dart';
import 'package:preferencias_flutter/src/pages/settings_page.dart';

class MenuWidget extends StatelessWidget {
  //const MenuWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/img/menu-img.jpg'),
                    fit: BoxFit.cover)),
          ),
          ListTile(
            leading: Icon(Icons.pages, color: Colors.blue),
            title: Text('Home'),
            onTap: () =>
                Navigator.pushReplacementNamed(context, HomePage.routeName),
          ),
          ListTile(
            leading: Icon(Icons.people, color: Colors.blue),
            title: Text('People'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.blue),
            title: Text('Settings'),
            onTap: () {
              //Navigator.pop(context)
              Navigator.pushReplacementNamed(context, SettingPage.routeName);
            },
          )
        ],
      ),
    );
  }
}
