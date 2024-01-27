import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

// ignore: must_be_immutable
class Details extends StatelessWidget {
  String passimage;
  String nameEnglish;
  String nameArbic;
  String sounds;
  Details({
    super.key,
    required this.passimage,
    required this.nameEnglish,
    required this.nameArbic,
    required this.sounds,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(8),
                width: size.width,
                height: size.height * .5,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: Theme.of(context).hoverColor, width: 5),
                  borderRadius: BorderRadiusDirectional.circular(50),
                  image: DecorationImage(
                      image: AssetImage(passimage), fit: BoxFit.cover),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // color: Colors.amber,
                    // width: size.width * .5,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Text(
                      textAlign: TextAlign.center,
                      nameEnglish,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    // color: Colors.black,
                    // width: size.width * .5,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Text(
                      textAlign: TextAlign.end,
                      // minFontSize: 16,
                      // maxLines: 2,
                      nameArbic,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource(sounds));
                },
                icon: const Icon(
                  Icons.play_circle,
                  size: 100,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
