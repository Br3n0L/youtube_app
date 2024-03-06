import 'package:flutter/material.dart';

// ignore: camel_case_types
class inscricoesPage extends StatefulWidget {
  const inscricoesPage({super.key});

  @override
  State<inscricoesPage> createState() => _inscricoesPageState();
}

// ignore: camel_case_types
class _inscricoesPageState extends State<inscricoesPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: const Center(
          child: Text(
        'Inscrições',
        style: TextStyle(fontSize: 25),
      )),
    );
  }
}
