import 'package:flutter/material.dart';
import 'package:tuko/models/data_number.dart';
import 'package:tuko/screen/details/details.dart';
import 'package:tuko/screen/numbers/widget/numberrow.dart';
import 'package:tuko/theme/image_number.dart';

class NumbersScreen extends StatelessWidget {
  const NumbersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<NumberRow> item = [
      NumberRow(
          nameEnglish: DataNumber.one,
          images: ImageNumber.one,
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Details(
                          passimage: ImageNumber.one,
                          nameEnglish: DataNumber.one,
                          nameArbic: 'واحد',
                        )));
          }),
      NumberRow(
          nameEnglish: DataNumber.two,
          images: ImageNumber.two,
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Details(
                          passimage: ImageNumber.two,
                          nameEnglish: DataNumber.two,
                          nameArbic: 'اثنين',
                        )));
          }),
      NumberRow(
          nameEnglish: DataNumber.three,
          images: ImageNumber.three,
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Details(
                          passimage: ImageNumber.three,
                          nameEnglish: DataNumber.three,
                          nameArbic: 'ثلاثة',
                        )));
          }),
      NumberRow(
          nameEnglish: DataNumber.four,
          images: ImageNumber.four,
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Details(
                          passimage: ImageNumber.four,
                          nameEnglish: DataNumber.four,
                          nameArbic: 'أربعة',
                        )));
          }),
      NumberRow(
          nameEnglish: DataNumber.five,
          images: ImageNumber.five,
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Details(
                          passimage: ImageNumber.five,
                          nameEnglish: DataNumber.five,
                          nameArbic: 'خمسة',
                        )));
          }),
      NumberRow(
          nameEnglish: DataNumber.six,
          images: ImageNumber.six,
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Details(
                          passimage: ImageNumber.six,
                          nameEnglish: DataNumber.six,
                          nameArbic: 'ستة',
                        )));
          }),
      NumberRow(
          nameEnglish: DataNumber.seven,
          images: ImageNumber.seven,
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Details(
                          passimage: ImageNumber.seven,
                          nameEnglish: DataNumber.seven,
                          nameArbic: 'سبعة',
                        )));
          }),
      NumberRow(
          nameEnglish: DataNumber.eight,
          images: ImageNumber.eight,
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Details(
                          passimage: ImageNumber.eight,
                          nameEnglish: DataNumber.eight,
                          nameArbic: 'ثمانية',
                        )));
          }),
      NumberRow(
          nameEnglish: DataNumber.nine,
          images: ImageNumber.nine,
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Details(
                          passimage: ImageNumber.nine,
                          nameEnglish: DataNumber.nine,
                          nameArbic: 'تسع',
                        )));
          }),
      NumberRow(
          nameEnglish: DataNumber.ten,
          images: ImageNumber.ten,
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Details(
                          passimage: ImageNumber.ten,
                          nameEnglish: DataNumber.ten,
                          nameArbic: 'عشرة',
                        )));
          }),
    ];

    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        centerTitle: true,
        // backgroundColor: Colors.pink[400],
        backgroundColor: Colors.pink[400],
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
