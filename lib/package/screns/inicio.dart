import 'package:flutter/material.dart';
import 'package:youtube_app/API/api.dart';

// ignore: camel_case_types
class inicioPage extends StatefulWidget {
  const inicioPage({super.key});

  @override
  State<inicioPage> createState() => _inicioPageState();
}

// ignore: camel_case_types
class _inicioPageState extends State<inicioPage> {
  @override
  Widget build(BuildContext context) {
    Api api = Api();
    api.pesquisar('');
    // ignore: avoid_unnecessary_containers
    return Container(
      child: const Center(
          child: Text(
        'Inicio',
        style: TextStyle(fontSize: 25),
      )),
    );
  }
}
