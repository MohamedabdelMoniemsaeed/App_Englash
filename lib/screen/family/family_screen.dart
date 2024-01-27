
import 'package:flutter/material.dart';
import 'package:tuko/models/family/data_family.dart';
import 'package:tuko/models/family/image_family.dart';
import 'package:tuko/models/family/sound_family.dart';
import 'package:tuko/screen/numbers/widget/numberrow.dart';

class FamilyScreen extends StatefulWidget {
  const FamilyScreen({super.key});

  @override
  State<FamilyScreen> createState() => _FamilyScreenState();
}

class _FamilyScreenState extends State<FamilyScreen> {
  @override
  Widget build(BuildContext context) {
    final List<NumberRow> item = [
      NumberRow(
        nameEnglish: DataFamily.daughter,
        images: ImageFamily.daughter,
        nameArbic: DataFamily.daughterArbic,
        sound: SoundFamily.daughter,
      ),
      NumberRow(
        nameEnglish: DataFamily.father,
        images: ImageFamily.father,
        nameArbic: DataFamily.fatherArbic,
        sound: SoundFamily.father,
      ),
      NumberRow(
        nameEnglish: DataFamily.mother,
        images: ImageFamily.mother,
        nameArbic: DataFamily.motherArbic,
        sound: SoundFamily.mother,
      ),
      NumberRow(
        nameEnglish: DataFamily.son,
        images: ImageFamily.son,
        nameArbic: DataFamily.sonArbic,
        sound: SoundFamily.son,
      ),
      NumberRow(
        nameEnglish: DataFamily.grandfather,
        images: ImageFamily.grandfather,
        nameArbic: DataFamily.grandfatherArbic,
        sound: SoundFamily.grandfather,
      ),
      NumberRow(
        nameEnglish: DataFamily.grandmother,
        images: ImageFamily.grandmother,
        nameArbic: DataFamily.grandmotherArbic,
        sound: SoundFamily.grandmother,
      ),
      NumberRow(
        nameEnglish: DataFamily.olderbrother,
        images: ImageFamily.olderbrother,
        nameArbic: DataFamily.olderbrotherArbic,
        sound: SoundFamily.olderbrother,
      ),
      NumberRow(
        nameEnglish: DataFamily.oldersister,
        images: ImageFamily.oldersister,
        nameArbic: DataFamily.oldersisterArbic,
        sound: SoundFamily.oldersister,
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
