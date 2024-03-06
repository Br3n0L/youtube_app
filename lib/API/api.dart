import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:youtube_app/package/model/video.dart';

const CHAVE_YOUTUBE_API = 'AIzaSyB5ZcT6TuuQcrAmf21xf_z_figIlghzqM4';
const ID_CANAL = 'UCVHFbqXqoYvEWM1Ddxl0QDg';
const URL_BASE = 'https://www.googleapis.com/youtube/v3/';

class Api {
  Future<List<Video>> pesquisar(String pesquisa) async {
    http.Response response = await http.get(Uri.parse(URL_BASE +
        "search"
            "?part=snippet"
            "&type=video"
            "&maxResults=20"
            "&order=date"
            "&key=$CHAVE_YOUTUBE_API"
            //"&channelId=$ID_CANAL"
            "&q=$pesquisa"));
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<dynamic> items = dadosJson["items"];
      List<Video> videos = items.map((item) => Video.fromJson(item)).toList();

      return videos;
    } else {
      throw Exception('Falha ao carregar postagens');
    }
  }
}
