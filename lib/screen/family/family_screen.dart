import 'package:flutter/material.dart';
import 'package:tuko/models/family/data_family.dart';
import 'package:tuko/models/family/image_family.dart';
import 'package:tuko/models/family/sound_family.dart';
import 'package:tuko/screen/details/details.dart';
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
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => Details(
                      sounds: SoundFamily.daughter,
                      passimage: ImageFamily.daughter,
                      nameEnglish: DataFamily.daughter,
                      nameArbic: "بنت")));
        },
      ),
      NumberRow(
        nameEnglish: DataFamily.father,
        images: ImageFamily.father,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => Details(
                      sounds: SoundFamily.father,
                      passimage: ImageFamily.father,
                      nameEnglish: DataFamily.father,
                      nameArbic: "أب")));
        },
      ),
      NumberRow(
        nameEnglish: DataFamily.mother,
        images: ImageFamily.mother,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => Details(
                      sounds: SoundFamily.mother,
                      passimage: ImageFamily.mother,
                      nameEnglish: DataFamily.mother,
                      nameArbic: "الأم")));
        },
      ),
      NumberRow(
        nameEnglish: DataFamily.son,
        images: ImageFamily.son,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => Details(
                      sounds: SoundFamily.son,
                      passimage: ImageFamily.son,
                      nameEnglish: DataFamily.son,
                      nameArbic: "ابن")));
        },
      ),
      NumberRow(
        nameEnglish: DataFamily.grandfather,
        images: ImageFamily.grandfather,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => Details(
                      sounds: SoundFamily.grandfather,
                      passimage: ImageFamily.grandfather,
                      nameEnglish: DataFamily.grandfather,
                      nameArbic: "جد")));
        },
      ),
      NumberRow(
        nameEnglish: DataFamily.grandmother,
        images: ImageFamily.grandmother,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => Details(
                      sounds: SoundFamily.grandmother,
                      passimage: ImageFamily.grandmother,
                      nameEnglish: DataFamily.grandmother,
                      nameArbic: "جدة")));
        },
      ),
      NumberRow(
        nameEnglish: DataFamily.olderbrother,
        images: ImageFamily.olderbrother,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => Details(
                      sounds: SoundFamily.olderbrother,
                      passimage: ImageFamily.olderbrother,
                      nameEnglish: DataFamily.olderbrother,
                      nameArbic: "الأخ \n الأكبر")));
        },
      ),
      NumberRow(
        nameEnglish: DataFamily.oldersister,
        images: ImageFamily.oldersister,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => Details(
                      sounds: SoundFamily.oldersister,
                      passimage: ImageFamily.oldersister,
                      nameEnglish: DataFamily.oldersister,
                      nameArbic: "الأخت\nالكبرى")));
        },
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
