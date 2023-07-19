import 'dart:convert';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:experimento_flutter/Activity/OtraPantalla.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  late AnimationController _animationController;
  bool isDrawerOpen = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
  }

  @override
  void setState(fn) {
    super.setState(fn);
    setState(() {
      isDrawerOpen = !isDrawerOpen;
      isDrawerOpen ? _animationController.forward() : _animationController.reverse();
    });
  }

  @override
  void dispose(){
    super.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Menu Lateral')),
      body: Center(child: Text('Esta es una prueba!')),
      drawer: Drawer(
        child: ListView(
          // Importante: elimina cualquier padding del ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(
              height: 240,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    new UserAccountsDrawerHeader(
                      margin: EdgeInsets.zero,
                      accountName: new Text('Pablo'),
                      accountEmail: new Text('pablo@email.com'),
                      currentAccountPicture: new CircleAvatar(
                          backgroundImage: new AssetImage('images/avatar.jpeg')
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: Text('Item #1'),
              onTap: () {
                // Actualiza el estado de la aplicación
                // ...
                // Luego cierra el drawer
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OtraPantalla())
                );
              },
            ),
            ListTile(
              title: Text('Item #2'),
              onTap: () {
                // // Actualiza el estado de la aplicación
                // ...
                // Luego cierra el drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}