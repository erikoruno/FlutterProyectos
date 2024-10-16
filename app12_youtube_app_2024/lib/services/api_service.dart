import 'dart:convert';

import 'package:app12_youtube_app_2024/models/video_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<List<VideoModel>> getVideos() async {
    List<VideoModel> videosModel = [];
    String path =
        "https://youtube.googleapis.com/youtube/v3/search?part=snippet&maxResults=20&key=AIzaSyBKCPhGlDrMr6MXKpiyf7ik5s0EICL2R-A&regionCode=PE";
    Uri uri = Uri.parse(path);
    http.Response response = await http.get(uri);

    if (response.statusCode == 200) {
      Map<String, dynamic> myMap = json.decode(response.body);
      List videos = myMap["items"];
      videosModel = videos.map((e) => VideoModel.fromJson(e)).toList();
      print(videosModel);
      print(response.statusCode);
      return videosModel;
    }
    return videosModel;
  }
}
