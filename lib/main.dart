import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_app/package/screns/home.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My YouTube App',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
