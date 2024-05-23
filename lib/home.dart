import 'package:flutter/material.dart';
import 'Inicio.dart';
import 'deportes.dart';
import 'entretenimiento.dart';
import 'tecnologia.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomePrincipalState();
}

class _HomePrincipalState extends State<Home> {
  int _selectDrawerItem = 0;
  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return Inicio();
      case 1:
        return Deportes();
      case 2:
        return tecnologia();
      case 3:
        return Entretenimiento();
    }
  }

  _onSelectItem(int pos) {
    setState(() {
      _selectDrawerItem = pos;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Drawer'),
      ),
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Emmanuel Castañeda'),
            accountEmail: Text('Emmanuel@gamil.com'),
            currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  'J',
                  style: TextStyle(fontSize: 40.0),
                )),
          ),
          ListTile(
            title: Text('Inicio'),
            leading: Icon(Icons.home),
            onTap: () {
              _onSelectItem(0);
            },
          ),
          ListTile(
            title: Text('Deportes'),
            leading: Icon(Icons.sports),
            onTap: () {
              _onSelectItem(1);
            },
          ),
          ListTile(
            title: Text('Tecnologia'),
            leading: Icon(Icons.computer),
            onTap: () {
              _onSelectItem(2);
            },
          ),
          ListTile(
            title: Text('Entretenimiento'),
            leading: Icon(Icons.movie),
            onTap: () {
              _onSelectItem(3);
            },
          ),
        ],
      )),
      body: _getDrawerItemWidget(_selectDrawerItem),
    );
  }
}
