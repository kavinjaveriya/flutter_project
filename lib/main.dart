import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

AudioPlayer Player = new AudioPlayer();
AudioCache audio = new AudioCache(fixedPlayer: Player);
var play = false;
var stop = true;

playhindiAudio() {
  if (play == false || stop == true) {
    audio.play("hindi.mp3");
    play = true;
    stop = false;
  }
}

playAudio() {
  if (play == false || stop == true) {
    audio.play("punjabi.mp3");
    play = true;
    stop = false;
  }
}

playengAudio() {
  if (play == false || stop == true) {
    audio.play("english.mp3");
    play = true;
    stop = false;
  }
}

pauseAudio() {
  if (play == true) {
    Player.pause();
    play = false;
  }
}

stopAudio() {
  if (play == true && stop == false) {
    Player.stop();
    play = false;
    stop = true;
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.teal[200],
          title: const Text('Music'),
          leading: new Padding(
            padding: const EdgeInsets.all(4.0),
            child: new Material(
              shape: new CircleBorder(),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              tooltip: 'search',
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.notifications),
              tooltip: 'Next page',
              onPressed: () {},
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                constraints: BoxConstraints.expand(
                  height: Theme.of(context).textTheme.headline4.fontSize * 1.1 +
                      120.0,
                ),
                padding: const EdgeInsets.all(8.0),
                color: Colors.teal[100],
                alignment: Alignment.center,
                child: RaisedButton(
                  onPressed: () {
                    print('playing:kasie mujhe tum mill gyi');
                    playhindiAudio();
                  },
                  child: Card(
                    color: Colors.green,
                    child: Text(
                      'Hindi song',
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ),
                transform: Matrix4.rotationZ(0.1),
              ),
              Container(
                constraints: BoxConstraints.expand(
                  height: Theme.of(context).textTheme.headline4.fontSize * 1.1 +
                      120.0,
                ),
                padding: const EdgeInsets.all(8.0),
                color: Colors.teal[900],
                alignment: Alignment.center,
                child: RaisedButton(
                  onPressed: () {
                    print('playing:running my mind');
                    playengAudio();
                  },
                  child: Card(
                    color: Colors.green,
                    child: Text(
                      'English song',
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ),
                transform: Matrix4.rotationZ(0.00),
              ),
              Container(
                constraints: BoxConstraints.expand(
                  height: Theme.of(context).textTheme.headline4.fontSize * 1.1 +
                      120.0,
                ),
                padding: const EdgeInsets.all(8.0),
                color: Colors.teal[300],
                alignment: Alignment.center,
                child: RaisedButton(
                  onPressed: () {
                    print('playing:fall');
                    playAudio();
                  },
                  child: Card(
                    color: Colors.green,
                    child: Text(
                      'Punjabi song',
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ),
                transform: Matrix4.rotationZ(-0.1),
              ),
              Container(
                width: 200,
                height: 50,
                child: Card(
                  color: Colors.grey.shade300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        child: IconButton(
                          onPressed: () {
                            print('nice song');
                          },
                          icon: Icon(
                            Icons.thumb_up,
                            size: 30,
                          ),
                        ),
                      ),
                      SizedBox(
                        child: IconButton(
                          onPressed: pauseAudio,
                          icon: Icon(
                            Icons.pause,
                            size: 30,
                          ),
                        ),
                      ),
                      SizedBox(
                        child: IconButton(
                          onPressed: stopAudio,
                          icon: Icon(
                            Icons.stop,
                            size: 30,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
