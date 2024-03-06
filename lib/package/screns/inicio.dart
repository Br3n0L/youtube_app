import 'package:flutter/material.dart';
import 'package:youtube_app/API/api.dart';
import 'package:youtube_app/package/model/video.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({Key? key}) : super(key: key);

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  _listarVideos() {
    Api api = Api();
    return api.pesquisar('');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Video>>(
      future: _listarVideos(),
      builder: (context, snapshots) {
        switch (snapshots.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case ConnectionState.active:
          case ConnectionState.done:
            if (snapshots.hasData && snapshots.data != null) {
              return ListView.separated(
                itemBuilder: (context, index) {
                  Video video = snapshots.data![index];
                  return Column(
                    children: [
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(video.imagem ?? ''),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text(video.titulo ?? ''),
                        subtitle: Text(video.canal ?? ''),
                      )
                    ],
                  );
                },
                separatorBuilder: (context, index) => Divider(
                  height: 10,
                  color: Colors.grey,
                ),
                itemCount: snapshots.data!.length,
              );
            } else {
              return const Center(
                child: Text('Nenhum dado a ser exibido!'),
              );
            }
        }
      },
    );
  }
}
