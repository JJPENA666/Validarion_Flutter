// ignore_for_file: prefer_const_constructors

import 'package:flutter_validator/src/pages/home_pages.dart';
import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ejercicio"),
        backgroundColor: Color.fromRGBO(121, 204, 118, 1),
      ),
      body: Center(
        child: Center(child: Text('Contenido del proyecto')),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(''),
              accountEmail: Text(''),
              currentAccountPicture:
                  CircleAvatar(foregroundImage: AssetImage("./images/Logo1.png")),
              otherAccountsPictures: [
                CircleAvatar(foregroundImage: AssetImage("images/Imagen de WhatsApp 2023-08-22 a las 09.57.40.jpg")),
                CircleAvatar(foregroundImage: AssetImage("./images/Imagen de WhatsApp 2023-08-22 a las 09.57.42.jpg"))
              ],
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 11, 219, 32)),
            ),
            Padding(
                padding: EdgeInsets.all(14.0),
                child: Center(
                    child: Text(
                  "Opciones De Usuario",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ))),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Inicio"),
            ),
            ListTile(
              leading: Icon(Icons.person_pin),
              title: Text("Perfil"),
            ),
            ListTile(
              leading: Icon(Icons.factory),
              title: Text("Estaciones Experimentales"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Personal"),
            ),
            ListTile(
              leading: Icon(Icons.emoji_objects),
              title: Text("Planificación"),
            ),
            ListTile(
              leading: Icon(Icons.fact_check),
              title: Text("Proyectos"),
            ),
            ListTile(
              leading: Icon(
                Icons.lock,
                color: Colors.black,
              ),
              title: Text(
                "Cerrar Sesión",
                style: TextStyle(color: Colors.indigo),
              ),
              onTap: () {
                decoration:
                BoxDecoration(
                  color: Colors.red,
                );
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
