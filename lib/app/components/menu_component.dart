
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/about_screen.dart';
import '../screens/create_screen.dart';
import '../screens/home_screen.dart';


Widget Menu(BuildContext context){
  return Drawer(
      child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              margin: EdgeInsets.only(bottom: 10.0),
              currentAccountPicture: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image:
                        NetworkImage("https://cdn-icons-png.flaticon.com/512/219/219983.png"))),
              ),
              accountName: new Container(
                  child: Text(
                    'Vinicios Azambuja',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  )),
              accountEmail: new Container(
                  child: Text(
                    'vinicios.pazambuja@gmail.com',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            ListTile(
              title: Text("Home"),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage(title: 'Lista de Vagas')),);
              },
            ),
            ListTile(
              title: Text("Adicionar Vaga"),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreatePage(title: 'Adicionar Vaga')),);
              },
            ),
            ListTile(
              title: Text("Sobre"),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutPage(title: 'Sobre')),);
              },
            ),
          ]
      )
  );
}