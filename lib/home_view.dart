import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  //...
  // AudioPlayer audioPlayer = AudioPlayer();
//...

//...
  late AudioPlayer player;
  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  Future<void> playButton(name) async {
    await player.setAsset('assets/$name');
    player.play();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: <Widget>[
        Expanded(
          child: Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(
                  onPressed: () {
                    playButton("bip.wav");
                  },
                  child: Container(
                    color: Colors.red,
                  ),
                ),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(
                  onPressed: () {
                    playButton("bongo.wav");
                  },
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
              ))
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(
                  onPressed: () {
                    playButton("clap1.wav");
                  },
                  child: Container(
                    color: Colors.brown,
                  ),
                ),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(
                  onPressed: () {
                    playButton("clap2.wav");
                  },
                  child: Container(
                    color: Colors.orange,
                  ),
                ),
              ))
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(
                  onPressed: () {
                    playButton("clap3.wav");
                  },
                  child: Container(
                    color: Colors.green,
                  ),
                ),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(
                  onPressed: () {
                    playButton("crash.wav");
                  },
                  child: Container(
                    color: Colors.purple,
                  ),
                ),
              ))
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(
                  onPressed: () {
                    playButton("oobah.wav");
                  },
                  child: Container(
                    color: Colors.yellow,
                  ),
                ),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(
                  onPressed: () {
                    playButton("ridebel.wav");
                  },
                  child: Container(
                    color: Colors.pink,
                  ),
                ),
              ))
            ],
          ),
        ),
      ],
    ));
  }
}
