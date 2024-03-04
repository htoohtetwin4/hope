import 'package:flutter/material.dart';
import 'package:hope_app/constants.dart';
import 'package:hope_app/screens/components/video_card.dart';

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
                    VideoCard(
                      title: 'Video One',
                      favourite: true,
                      time: '30 min',
                      thumbnail: 'assets/images/movie_demo.jpg',
                    ),
                    VideoCard(
                      title: 'Video Two',
                      favourite: false,
                      time: '30 min',
                      thumbnail: 'assets/images/movie_demo1.jpg',
                    ),
                    VideoCard(
                      title: 'Video Three',
                      favourite: true,
                      time: '30 min',
                      thumbnail: 'assets/images/movie_demo2.jpg',
                    ),
                    VideoCard(
                      title: 'Video Four',
                      favourite: false,
                      time: '30 min',
                      thumbnail: 'assets/images/movie_demo3.jpg',
                    ),
                    VideoCard(
                      title: 'Video Five',
                      favourite: true,
                      time: '30 min',
                      thumbnail: 'assets/images/movie_demo4.jpg',
                    ),
                    VideoCard(
                      title: 'Video Six',
                      favourite: true,
                      time: '30 min',
                      thumbnail: 'assets/images/movie_demo5.jpg',
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