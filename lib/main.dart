import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_app/package/screns/home.page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My YouTube App',
      home: const HomePage(),
    );
  }
}
