import 'package:app12_youtube_app_2024/ui/general/colors.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoDetailPage extends StatefulWidget {
  String videoId;

  VideoDetailPage({
    super.key,
    required this.videoId,
  });

  @override
  State<VideoDetailPage> createState() => _VideoDetailPageState();
}

class _VideoDetailPageState extends State<VideoDetailPage> {
  late YoutubePlayerController _playerController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _playerController = YoutubePlayerController(
        initialVideoId: widget.videoId,
        flags: const YoutubePlayerFlags(
          autoPlay: true,
          //mute: true,
          //hideControls: true,
        ));
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: KBrandPrimaryColor,
        body: Column(
          children: [
            SizedBox(
              height: height * 0.30,
              child: YoutubePlayer(
                controller: _playerController,
                progressColors: const ProgressBarColors(
                  playedColor: Colors.red,
                  handleColor: Colors.amber,
                  bufferedColor: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
