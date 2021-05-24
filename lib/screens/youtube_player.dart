import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Youtubeplayer extends StatelessWidget {
  final String urlTxt;

  const Youtubeplayer({Key key, this.urlTxt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: createYoutube(),
      ),
    );
  }

  Widget createYoutube() {
    try {
      YoutubePlayerController _controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(urlTxt),
        flags: YoutubePlayerFlags(
          autoPlay: true,
          controlsVisibleAtStart: true,
        ),
      );

      return YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
      );
    } catch (e) {
      
      return Scaffold(
        body: Center(
          child: Text("Lütfen doğru bir bağlantı girin"),
        ),
      );
    }
  }
}
