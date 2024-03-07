import 'package:flutter/material.dart';
import 'package:hope_app/constants.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class VideoDetailScreen extends StatefulWidget {
  const VideoDetailScreen({Key? key}) : super(key: key);

  @override
  _VideoDetailScreenState createState() => _VideoDetailScreenState();
}

class _VideoDetailScreenState extends State<VideoDetailScreen> {
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
      autoPlay: false,
      looping: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   titleSpacing: 0,
        //   title: Padding(
        //     padding: EdgeInsets.only(left: 14.0),
        //     child: Text(
        //       "Video",
        //       style: TextStyle(
        //         color: Colors.white,
        //         fontWeight: fw_6,
        //         fontSize: 30,
        //       ),
        //     ),
        //   ),
        //   backgroundColor: hBaseColorOne,
        // ),
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: MediaQuery.of(context).size.height * 0.33,
              child: Column(
                children: [
                  Center(
                    child: _videoPlayercontroller.value.isInitialized
                        ? AspectRatio(
                            aspectRatio:
                                _videoPlayercontroller.value.aspectRatio,
                            child: _chewieController != null
                                ? Chewie(controller: _chewieController!)
                                : Container(),
                          )
                        : Container(),
                  ),
                ],
              ),
            ),
            // _backArrow(context),
            _videoDetailBox(),
          ],
        ),
        // body: Stack(

        // child: Column(
        //   children: [
        //     Center(
        //       child: _videoPlayercontroller.value.isInitialized
        //           ? AspectRatio(
        //               aspectRatio: _videoPlayercontroller.value.aspectRatio,
        //               child: _chewieController != null
        //                   ? Chewie(controller: _chewieController!)
        //                   : Container(),
        //             )
        //           : Container(),
        //     ),
        //   ],
        // ),
        // ),
      ),
    );
  }

  @override
  void dispose() {
    _videoPlayercontroller.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  _videoDetailBox() {
    return DraggableScrollableSheet(
      initialChildSize: 0.72,
      maxChildSize: 1,
      minChildSize: 0.72,
      builder: (context, scrollController) {
        return SingleChildScrollView(
          controller: scrollController,
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: FittedBox(
                        child: Text(
                          "Dummy Product Name",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: fw_7,
                            fontSize: 27,
                          ),
                          // overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.download_sharp),
                        label: const Text('Download')),
                    Text(
                      "100,000 MMK",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: fw_7,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Divider(),
                SizedBox(height: 10),
                Text(
                  "Description",
                  style: TextStyle(
                      color: Colors.black, fontWeight: fw_6, fontSize: 20),
                ),
                SizedBox(height: 10),
                Text(
                  "The Ice Cream Making Machine is a versatile appliance designed to simplify the process of creating delicious ice cream at home or in commercial settings. With its user-friendly interface and advanced features, this machine allows users to customize their ice cream recipes to suit their taste preferences.",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: fw_6, fontSize: 15),
                ),
                Divider(),
                SizedBox(height: 10),
                Text(
                  "Useage",
                  style: TextStyle(
                      color: Colors.black, fontWeight: fw_6, fontSize: 20),
                ),
                SizedBox(height: 10),
                Text(
                  "To use the ice cream making machine, start by preparing your desired ice cream mixture with fresh ingredients like milk, cream, sugar, and flavorings. Freeze the mixing bowl of the machine in advance according to the manufacturer's instructions. Once the bowl is frozen, assemble the machine and pour in the mixture. Turn on the machine and let it churn the mixture until it reaches the desired consistency, usually about 20-30 minutes. Optionally, add mix-ins like chocolate chips or fruit towards the end of the churning process. Once done, scoop out the freshly churned ice cream and serve immediately for a delightful frozen treat!",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: fw_6, fontSize: 15),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
