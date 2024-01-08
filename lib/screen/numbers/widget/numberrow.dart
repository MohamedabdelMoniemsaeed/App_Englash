import 'package:flutter/material.dart';

class NumberRow extends StatelessWidget {
  String images;
  String nameEnglish;
  // String nameArbic;
  Function() onTap;
  NumberRow(
      {super.key,
      required this.images,
      required this.nameEnglish,
      // required this.nameArbic,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            margin: const EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: CircleAvatar(
              backgroundImage: AssetImage(images),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.purple[200],
                border: Border.all(width: 3, color: Colors.white)),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .04,
            child: Text(
              nameEnglish,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white, fontSize: 19),
            ),
          ),
        ],
      ),
    );
  }
}
