import 'package:flutter/material.dart';
import 'package:hope_app/constants.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class DetailVideoScreen extends StatefulWidget {
  const DetailVideoScreen({Key? key}) : super(key: key);

  @override
  _DetailVideoScreenState createState() => _DetailVideoScreenState();
}

class _DetailVideoScreenState extends State<DetailVideoScreen> {
  late VideoPlayerController _videoPlayercontroller;
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();
    _videoPlayercontroller =
        VideoPlayerController.asset('assets/videoes/test_video1.mp4')
          ..initialize().then((_) {
            setState(() {});
            _initializeChewieController();
          }).catchError((error) {
            print("Error initializing video player: $error");
          });
  }

  void _initializeChewieController() {
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayercontroller,
      autoPlay: true,
      looping: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Padding(
          padding: EdgeInsets.only(left: 14.0),
          child: Text(
            "Video",
            style: TextStyle(
              color: Colors.white,
              fontWeight: fw_6,
              fontSize: 30,
            ),
          ),
        ),
        backgroundColor: hBaseColorOne,
      ),
      body: Column(
        children: [
          Center(
            child: _videoPlayercontroller.value.isInitialized
                ? AspectRatio(
                    aspectRatio: _videoPlayercontroller.value.aspectRatio,
                    child: _chewieController != null
                        ? Chewie(controller: _chewieController!)
                        : Container(),
                  )
                : Container(),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: hBaseColorThree,
                  borderRadius: BorderRadiusDirectional.circular(30)),
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    _videoPlayercontroller.dispose();
    _chewieController?.dispose();
    super.dispose();
  }
}
