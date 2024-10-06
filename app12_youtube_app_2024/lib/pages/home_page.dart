import 'package:app12_youtube_app_2024/models/video_model.dart';
import 'package:app12_youtube_app_2024/services/api_service.dart';
import 'package:app12_youtube_app_2024/ui/general/colors.dart';
import 'package:app12_youtube_app_2024/ui/widgets/item_filter_widget.dart';
import 'package:app12_youtube_app_2024/ui/widgets/item_video_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ApiService _apiService = ApiService();

  List<VideoModel> videos = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() {
    _apiService.getVideos().then((value) {
      videos = value;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    _apiService.getVideos();
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 14.0,
          vertical: 12.0,
        ),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.explore_outlined,
                      color: Colors.white,
                    ),
                    label: const Text(
                      "Explorar",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 2,
                      backgroundColor: KBrandSecundaryColor,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 38.0,
                    child: VerticalDivider(
                      color: KBrandSecundaryColor,
                      thickness: 1.0,
                    ),
                  ),
                  ItemFilterWidget(
                    texto: "Todos",
                    isSelected: true,
                  ),
                  ItemFilterWidget(
                    texto: "Mixes",
                    isSelected: false,
                  ),
                  ItemFilterWidget(
                    texto: "Música",
                    isSelected: false,
                  ),
                  ItemFilterWidget(
                    texto: "Programación",
                    isSelected: false,
                  ),
                ],
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemCount: videos.length,
                itemBuilder: (BuildContext context, int index) {
                  return ItemVideoWidget(
                    videoModel: videos[index],
                  );
                }),
          ],
        ),
      ),
    );
  }
}
