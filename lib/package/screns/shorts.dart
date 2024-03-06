import 'package:flutter/material.dart';

// ignore: camel_case_types
class shortPages extends StatefulWidget {
  const shortPages({super.key});

  @override
  State<shortPages> createState() => _shortPagesState();
}

// ignore: camel_case_types
class _shortPagesState extends State<shortPages> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: const Center(
          child: Text(
        'Shorts',
        style: TextStyle(fontSize: 25),
      )),
    );
  }
}
