import 'package:flutter/material.dart';
import 'package:youtube_app/customsearchdelegate.dart';
import 'package:youtube_app/package/screns/adicionar.dart';
import 'package:youtube_app/package/screns/inicio.dart';
import 'package:youtube_app/package/screns/inscricoes.dart';
import 'package:youtube_app/package/screns/shorts.dart';
import 'package:youtube_app/package/screns/voce.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _indiceAtual = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> telas = [
      const InicioPage(),
      const shortPages(),
      const adicionarPage(),
      const inscricoesPage(),
      const VocePage(),
    ];
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.grey),
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/images/youtube.png',
          width: 98,
          height: 22,
        ),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.cast)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notification_add)),
          IconButton(
            onPressed: () async {
              String? res = await showSearch(
                  context: context, delegate: CustomSearchDelegate());
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: telas[_indiceAtual],
      ),
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.black,
          currentIndex: _indiceAtual,
          onTap: (indice) {
            setState(() {
              _indiceAtual = indice;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.home),
              label: 'Inicio',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.whatshot),
              label: 'Shorts',
            ),
            BottomNavigationBarItem(
              icon: Container(
                transform: Matrix4.translationValues(0.0, 10.0, 0.0),
                child: const Icon(Icons.add_circle_outline, size: 36.0),
              ),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions_outlined),
              label: 'Inscrições',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.circle),
              label: 'Você',
            ),
          ]),
    );
  }
}
