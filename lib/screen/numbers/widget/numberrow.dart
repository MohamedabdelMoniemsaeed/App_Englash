import 'package:flutter/material.dart';

class NumberRow extends StatefulWidget {
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
  State<NumberRow> createState() => _NumberRowState();
}

class _NumberRowState extends State<NumberRow> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
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
