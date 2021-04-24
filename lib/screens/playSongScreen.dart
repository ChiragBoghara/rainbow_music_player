import 'package:flutter/material.dart';
import 'package:rainbow_music_player/data.dart';

class PlaySongScreen extends StatefulWidget {
  final Song mySong;
  PlaySongScreen({@required this.mySong});
  @override
  _PlaySongScreenState createState() => _PlaySongScreenState();
}

class _PlaySongScreenState extends State<PlaySongScreen> {
  var sSize;
  @override
  Widget build(BuildContext context) {
    sSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Now Playing"),
        centerTitle: true,
      ),
      body: Container(
        height: sSize.height,
        width: sSize.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              widget.mySong.imgSrc,
            ),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black, BlendMode.darken),
          ),
        ),
      ),
    );
  }
}
