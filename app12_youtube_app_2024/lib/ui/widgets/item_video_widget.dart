import 'package:app12_youtube_app_2024/models/video_model.dart';
import 'package:app12_youtube_app_2024/pages/video_detail_page.dart';
import 'package:flutter/material.dart';

class ItemVideoWidget extends StatelessWidget {
  VideoModel videoModel;
  //ChannelModel channelModel;
  ItemVideoWidget({super.key, required this.videoModel});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => VideoDetailPage(
              videoId: videoModel.id.videoId!,
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(
          top: 6.0,
          bottom: 10.0,
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                  videoModel.snippet.thumbnails.high.url,
                  width: double.infinity,
                  height: height * 0.3,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5.0,
                      vertical: 1.0,
                    ),
                    margin: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    color: Colors.black.withOpacity(0.7),
                    child: const Text(
                      //videoModel.snippet.publishTime.toString(),
                      "23.22",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/1212984/pexels-photo-1212984.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
              ),
              title: Text(
                videoModel.snippet.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                //"Tempor incident proident pariatur",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                ),
              ),
              subtitle: Text(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                videoModel.snippet.channelTitle,
                //"Loko nasnas - 8.8M de vistas - hace 5 años",
                style: const TextStyle(
                  color: Colors.white54,
                  fontSize: 13.0,
                ),
              ),
              trailing: Container(
                margin: const EdgeInsets.only(
                  top: 10.0,
                ),
                child: const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
