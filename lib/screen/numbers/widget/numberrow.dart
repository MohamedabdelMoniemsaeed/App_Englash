// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:tuko/screen/widgets_details/Details.dart';

class NumberRow extends StatefulWidget {
  final String images;
  final String nameEnglish;
  final String sound;
  final String nameArbic;
  // Function() onTap;
  NumberRow({
    super.key,
    required this.images,
    required this.nameEnglish,
    required this.nameArbic,
    required this.sound,
    // required this.onTap
  });

  @override
  State<NumberRow> createState() => _NumberRowState();
}

class _NumberRowState extends State<NumberRow> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Details(
                      sounds: widget.sound,
                      passimage: widget.images,
                      nameEnglish: widget.nameEnglish,
                      nameArbic: widget.nameArbic,
                    )));
      },
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            margin: const EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: CircleAvatar(
              backgroundImage: AssetImage(widget.images),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Theme.of(context).hoverColor,
                border: Border.all(width: 3, color: Colors.white)),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .04,
            child: Text(
              widget.nameEnglish,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white, fontSize: 19),
            ),
          ),
        ],
      ),
    );
  }
}
