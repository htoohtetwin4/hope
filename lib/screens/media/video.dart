import 'package:flutter/material.dart';
import 'package:hope_app/constants.dart';
import 'package:video_player/video_player.dart';

class DetailVideoScreen extends StatefulWidget {
  const DetailVideoScreen({Key? key}) : super(key: key);

  @override
  _DetailVideoScreenState createState() => _DetailVideoScreenState();
}

class _DetailVideoScreenState extends State<DetailVideoScreen> {
  late VideoPlayerController _videoPlayercontroller;

  @override
  void initState() {
    super.initState();
    _videoPlayercontroller =
        VideoPlayerController.asset('assets/videoes/test_video1.mp4')
          ..initialize().then((_) {
            setState(() {});
          }).catchError((error) {
            print("Error initializing video player: $error");
          });
  }
  // @override
  // void initState() {
  //   super.initState();
  //   _videoPlayercontroller = VideoPlayerController.networkUrl(Uri.parse(
  //       'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
  //     ..initialize().then((_) {
  //       // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
  //       setState(() {});
  //     });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Padding(
          padding: EdgeInsets.only(left: 14.0),
          child: Text(
            "Videoes",
            style: TextStyle(
              color: Colors.white,
              fontWeight: fw_6,
              fontSize: 30,
            ),
          ),
        ),
        backgroundColor: hBaseColorThree,
      ),
      body: Center(
        child: _videoPlayercontroller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _videoPlayercontroller.value.aspectRatio,
                child: VideoPlayer(_videoPlayercontroller),
              )
            : Container(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _videoPlayercontroller.value.isPlaying
                ? _videoPlayercontroller.pause()
                : _videoPlayercontroller.play();
          });
        },
        child: Icon(
          _videoPlayercontroller.value.isPlaying
              ? Icons.pause
              : Icons.play_arrow,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _videoPlayercontroller.dispose();
    super.dispose();
  }
}
