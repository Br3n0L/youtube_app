import 'package:flutter/material.dart';

class adicionarPage extends StatefulWidget {
  const adicionarPage({super.key});

  @override
  State<adicionarPage> createState() => _adicionarPageState();
}

class _adicionarPageState extends State<adicionarPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: const Center(
          child: Text(
        'Adicionar',
        style: TextStyle(fontSize: 25),
      )),
    );
  }
}
