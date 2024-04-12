// import 'package:flutter/material.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// class YouTubePlayerPage extends StatefulWidget {
//   @override
//   _YouTubePlayerPageState createState() => _YouTubePlayerPageState();
// }

// class _YouTubePlayerPageState extends State<YouTubePlayerPage> {
//   late YoutubePlayerController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = YoutubePlayerController(
//       initialVideoId: 'ThoJ71nateg', // Provide the YouTube video ID here
//       flags: YoutubePlayerFlags(
//         autoPlay: true,
//         mute: false,
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('YouTube Player'),
//       ),
//       body: Center(
//         child: YoutubePlayer(
//           controller: _controller,
//           showVideoProgressIndicator: true,
//           progressIndicatorColor: Colors.blueAccent,
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _controller.dispose();
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: YouTubePlayerPage(),
//   ));
// }

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YouTubePlayerPage extends StatefulWidget {
  @override
  _YouTubePlayerPageState createState() => _YouTubePlayerPageState();
}

class _YouTubePlayerPageState extends State<YouTubePlayerPage> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
          'https://youtu.be/ThoJ71nateg?si=xn3oUHgEfR0jLQkY')!, // Extract video ID from URL
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('YouTube Player'),
      ),
      body: SizedBox(
        height: 200, // Set the desired height
        child: Center(
          child: YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.blueAccent,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
