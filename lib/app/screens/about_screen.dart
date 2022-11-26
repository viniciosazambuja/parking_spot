
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/menu_component.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(widget.title, textAlign: TextAlign.center)
      ),
      drawer: Menu(context),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Aplicativo desenvolvido para a matéria de Desenvolvimento de Sistemas para Dispositivos Móveis ministrada pelo professor Vagner.',
                style: TextStyle(fontSize: 15, height: 1.2),
              ),
            ]
        ),
      ),
    );
  }
}
