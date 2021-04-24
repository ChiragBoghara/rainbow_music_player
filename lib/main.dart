import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rainbow_music_player/screens/playSongScreen.dart';
import 'data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List containerColors = [
    Color(0xff9400D3),
    Color(0xff4B0082),
    Color(0xff0000FF),
    Color(0xff00FF00),
    Color(0xffFFFF00),
    Color(0xffFF7F00),
    Color(0xffFF0000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text("RAINBOW MUSIC"),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: allSongs.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: InkWell(
              splashColor: Colors.black,
              onTap: () {
                Navigator.of(context).pushReplacement(
                  CupertinoPageRoute(
                    builder: (context) => PlaySongScreen(
                      mySong: allSongs[index],
                    ),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: index > 6
                      ? containerColors[index - 7]
                      : containerColors[index],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(allSongs[index].imgSrc),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(allSongs[index].name),
                          Text(allSongs[index].singer),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Icon(Icons.play_arrow),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
