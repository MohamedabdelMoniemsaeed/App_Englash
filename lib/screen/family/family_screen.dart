import 'package:flutter/material.dart';
import 'package:tuko/models/family/data_family.dart';
import 'package:tuko/models/family/image_family.dart';
import 'package:tuko/models/family/sound_family.dart';
import 'package:tuko/screen/widget/all_icon.dart';

class FamilyScreen extends StatefulWidget {
  const FamilyScreen({super.key});

  @override
  State<FamilyScreen> createState() => _FamilyScreenState();
}

class _FamilyScreenState extends State<FamilyScreen> {
  @override
  Widget build(BuildContext context) {
    final List<FamilyIcon> item = [
      FamilyIcon(
        nameEnglish: DataFamily.daughter,
        images: ImageFamily.daughter,
        nameArbic: DataFamily.daughterArbic,
        sound: SoundFamily.daughter,
      ),
      FamilyIcon(
        nameEnglish: DataFamily.father,
        images: ImageFamily.father,
        nameArbic: DataFamily.fatherArbic,
        sound: SoundFamily.father,
      ),
      FamilyIcon(
        nameEnglish: DataFamily.mother,
        images: ImageFamily.mother,
        nameArbic: DataFamily.motherArbic,
        sound: SoundFamily.mother,
      ),
      FamilyIcon(
        nameEnglish: DataFamily.son,
        images: ImageFamily.son,
        nameArbic: DataFamily.sonArbic,
        sound: SoundFamily.son,
      ),
      FamilyIcon(
        nameEnglish: DataFamily.grandfather,
        images: ImageFamily.grandfather,
        nameArbic: DataFamily.grandfatherArbic,
        sound: SoundFamily.grandfather,
      ),
      FamilyIcon(
        nameEnglish: DataFamily.grandmother,
        images: ImageFamily.grandmother,
        nameArbic: DataFamily.grandmotherArbic,
        sound: SoundFamily.grandmother,
      ),
      FamilyIcon(
        nameEnglish: DataFamily.brother,
        images: ImageFamily.brother,
        nameArbic: DataFamily.brotherArbic,
        sound: SoundFamily.brother,
      ),
      FamilyIcon(
        nameEnglish: DataFamily.sister,
        images: ImageFamily.sister,
        nameArbic: DataFamily.sisterArbic,
        sound: SoundFamily.sister,
      ),
    ];

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: const Text(
          'Family',
          style: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: GridView.builder(
        itemCount: item.length,
        itemBuilder: (context, index) => item[index],
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      ),
    );
  }
}
