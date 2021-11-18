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
                child: buttonWidget("bip.wav", Colors.blue),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: buttonWidget("bongo.wav", Colors.red),
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
                child: buttonWidget("clap2.wav", Colors.brown),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: buttonWidget("clap3.wav", Colors.yellow),
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
                child: buttonWidget("crash.wav", Colors.orange),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: buttonWidget("how.wav", Colors.pink),
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
                child: buttonWidget("oobah.wav", Colors.purple),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: buttonWidget("ridebel.wav", Colors.green),
              ))
            ],
          ),
        ),
      ],
    ));
  }

  FlatButton buttonWidget(String ses, Color renk) {
    return FlatButton(
      onPressed: () {
        playButton(ses);
      },
      child: Container(
        color: renk,
      ),
    );
  }
}
