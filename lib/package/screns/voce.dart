import 'package:flutter/material.dart';

class VocePage extends StatefulWidget {
  const VocePage({super.key});

  @override
  State<VocePage> createState() => _VocePageState();
}

class _VocePageState extends State<VocePage> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: const Center(
          child: Text(
        'Você',
        style: TextStyle(fontSize: 25),
      )),
    );
  }
}
