// ignore: file_names
import 'package:flutter/material.dart';
import 'package:tuko/models/numbers/data_number.dart';
import 'package:tuko/models/numbers/image_number.dart';
import 'package:tuko/models/numbers/sound_number.dart';
import 'package:tuko/screen/numbers/widget/numberrow.dart';

class NumbersScreen extends StatelessWidget {
  const NumbersScreen({super.key});

  // ignore: recursive_getters
  @override
  Widget build(BuildContext context) {
    final List<NumberRow> item = [
      NumberRow(
        nameEnglish: DataNumber.one,
        images: ImageNumber.one,
        nameArbic: DataNumber.oneArbic,
        sound: SoundNumber.one,
      ),
      NumberRow(
        nameEnglish: DataNumber.two,
        images: ImageNumber.two,
        nameArbic: DataNumber.twoArbic,
        sound: SoundNumber.two,
      ),
      NumberRow(
        nameEnglish: DataNumber.three,
        images: ImageNumber.three,
        nameArbic: DataNumber.threeArbic,
        sound: SoundNumber.three,
      ),
      NumberRow(
        nameEnglish: DataNumber.four,
        images: ImageNumber.four,
        nameArbic: DataNumber.fourArbic,
        sound: SoundNumber.four,
      ),
      NumberRow(
        nameEnglish: DataNumber.five,
        images: ImageNumber.five,
        nameArbic: DataNumber.fiveArbic,
        sound: SoundNumber.five,
      ),
      NumberRow(
        nameEnglish: DataNumber.six,
        images: ImageNumber.six,
        nameArbic: DataNumber.sixArbic,
        sound: SoundNumber.six,
      ),
      NumberRow(
        nameEnglish: DataNumber.seven,
        images: ImageNumber.seven,
        nameArbic: DataNumber.sevenArbic,
        sound: SoundNumber.seven,
      ),
      NumberRow(
        nameEnglish: DataNumber.eight,
        images: ImageNumber.eight,
        nameArbic: DataNumber.eightArbic,
        sound: SoundNumber.eight,
      ),
      NumberRow(
        nameEnglish: DataNumber.nine,
        images: ImageNumber.nine,
        nameArbic: DataNumber.nineArbic,
        sound: SoundNumber.nine,
      ),
      NumberRow(
        nameEnglish: DataNumber.ten,
        images: ImageNumber.ten,
        nameArbic: DataNumber.tenArbic,
        sound: SoundNumber.ten,
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
      body: GridView.builder(
        itemCount: item.length,
        itemBuilder: (context, index) => item[index],
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        // children: getlist(item),
      ),
    );
  }
}
