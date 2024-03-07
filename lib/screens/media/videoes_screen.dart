import 'package:flutter/material.dart';
import 'package:hope_app/constants.dart';
import 'package:hope_app/data.dart';
import 'package:hope_app/screens/components/video_card.dart';
import 'package:hope_app/screens/media/video_detail.dart';

class VideoesScreen extends StatefulWidget {
  const VideoesScreen({Key? key}) : super(key: key);

  @override
  _VideoesScreenState createState() => _VideoesScreenState();
}

class _VideoesScreenState extends State<VideoesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hBaseColorOne,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80),
            Text(
              "Videoes",
              style: TextStyle(
                  fontSize: 27, color: Colors.white, fontWeight: fw_6),
            ),
            Divider(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (final videoData in VideoCardData.videoData)
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VideoDetailScreen()));
                        },
                        child: VideoCard(
                          video: videoData,
                        ),
                      ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
