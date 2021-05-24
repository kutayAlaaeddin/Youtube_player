import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class DefaultVideos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: YoutubePlayer(
                controller: _controller1,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: YoutubePlayer(
                controller: _controller2,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: YoutubePlayer(
                controller: _controller3,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: YoutubePlayer(
                controller: _controller4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

String url1 = "https://www.youtube.com/watch?v=cPvyl6MYxlg";
String url2 = "https://www.youtube.com/watch?v=DKTAB8HgIwc";
String url3 = "https://www.youtube.com/watch?v=85A0N1EqHbw";
String url4 =
    "https://www.youtube.com/watch?v=JFZmrO3nVMQ&list=PLiulfTTM-rLiip0FjmWXwaZpr7AAs4lEl&index=8&t=0s";
YoutubePlayerController _controller1 = YoutubePlayerController(
  initialVideoId: YoutubePlayer.convertUrlToId(url1),
  flags: YoutubePlayerFlags(autoPlay: true),
);
YoutubePlayerController _controller2 = YoutubePlayerController(
  initialVideoId: YoutubePlayer.convertUrlToId(url2),
  flags: YoutubePlayerFlags(
    autoPlay: false,
    mute: false,
    controlsVisibleAtStart: true,
  ),
);
YoutubePlayerController _controller3 = YoutubePlayerController(
  initialVideoId: YoutubePlayer.convertUrlToId(url3),
  flags: YoutubePlayerFlags(autoPlay: false),
);
YoutubePlayerController _controller4 = YoutubePlayerController(
  initialVideoId: YoutubePlayer.convertUrlToId(url4),
  flags: YoutubePlayerFlags(autoPlay: false),
);
