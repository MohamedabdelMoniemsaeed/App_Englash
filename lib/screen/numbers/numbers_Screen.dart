// ignore: file_names
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tuko/models/numbers/data_number.dart';
import 'package:tuko/models/numbers/image_number.dart';
import 'package:tuko/models/numbers/sound_number.dart';
import 'package:tuko/screen/widgets_details/number_Details.dart';

class NumbersScreen extends StatefulWidget {
  const NumbersScreen({super.key});

  @override
  State<NumbersScreen> createState() => _NumbersScreenState();
}

class _NumbersScreenState extends State<NumbersScreen> {
  // ignore: recursive_getters
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    int indexs = 0;
    final List<NumberDetails> item = [
      NumberDetails(
        nameEnglish: DataNumber.one,
        passimage: ImageNumber.one,
        nameArbic: DataNumber.oneArbic,
        sounds: SoundNumber.one,
      ),
      NumberDetails(
        nameEnglish: DataNumber.two,
        passimage: ImageNumber.two,
        nameArbic: DataNumber.twoArbic,
        sounds: SoundNumber.two,
      ),
      NumberDetails(
        nameEnglish: DataNumber.three,
        passimage: ImageNumber.three,
        nameArbic: DataNumber.threeArbic,
        sounds: SoundNumber.three,
      ),
      NumberDetails(
        nameEnglish: DataNumber.four,
        passimage: ImageNumber.four,
        nameArbic: DataNumber.fourArbic,
        sounds: SoundNumber.four,
      ),
      NumberDetails(
        nameEnglish: DataNumber.five,
        passimage: ImageNumber.five,
        nameArbic: DataNumber.fiveArbic,
        sounds: SoundNumber.five,
      ),
      NumberDetails(
        nameEnglish: DataNumber.six,
        passimage: ImageNumber.six,
        nameArbic: DataNumber.sixArbic,
        sounds: SoundNumber.six,
      ),
      NumberDetails(
        nameEnglish: DataNumber.seven,
        passimage: ImageNumber.seven,
        nameArbic: DataNumber.sevenArbic,
        sounds: SoundNumber.seven,
      ),
      NumberDetails(
        nameEnglish: DataNumber.eight,
        passimage: ImageNumber.eight,
        nameArbic: DataNumber.eightArbic,
        sounds: SoundNumber.eight,
      ),
      NumberDetails(
        nameEnglish: DataNumber.nine,
        passimage: ImageNumber.nine,
        nameArbic: DataNumber.nineArbic,
        sounds: SoundNumber.nine,
      ),
      NumberDetails(
        nameEnglish: DataNumber.ten,
        passimage: ImageNumber.ten,
        nameArbic: DataNumber.tenArbic,
        sounds: SoundNumber.ten,
      )
    ];
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        centerTitle: true,
        // backgroundColor: Colors.pink[400],
        backgroundColor: Theme.of(context).dividerColor,
        title: const Text('Numbers',
            style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
      ),
      body: CarouselSlider(
        options: CarouselOptions(
          viewportFraction: 1,
          enlargeCenterPage: true,
          // enlargeFactor: 0.3,
          onPageChanged: (index, reason) => setState(() => indexs = index),
          scrollDirection: Axis.horizontal,
          height: size.height,
        ),
        items: item
            .map((e) => NumberDetails(
                  nameArbic: e.nameArbic,
                  nameEnglish: e.nameEnglish,
                  passimage: e.passimage,
                  sounds: e.sounds,
                ))
            .toList(),
      ),
    );
  }
}
