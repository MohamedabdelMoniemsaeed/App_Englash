import 'package:flutter/material.dart';
import 'package:tuko/screen/colors/colors_Screen.dart';
import 'package:tuko/screen/family/family_screen.dart';
import 'package:tuko/screen/numbers/numbers_Screen.dart';
import 'package:tuko/screen/widget/tapRow.dart';
import 'package:tuko/theme/image_number.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
   final List<TapRow> item =[
      TapRow(
            name: 'Numbers',
            // color: Colors.white54,
            image: ImageNumber.backgroundimage,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NumbersScreen(),
                ),
              );
            },
          ),
          TapRow(
            name: 'Family',
            // color: Colors.white54,
            image: 'assets/images/family_members/backgroundimage.jpg',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FamilyScreen()));
            },
          ),
          TapRow(
            name: 'Colors',
            // color: Colors.white54,
            image: 'assets/images/colors/backgroundimage.jpg',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ColorsScreen()));
            },
          ),
           // TapRow(
          //   name: 'Phrases',
          //   color: Colors.white54,
          //   image: 'assets/images/backgroundimage.jpg',
          //   onTap: () {},
          // ),
    ];
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        centerTitle: true,
        title: const Text("English",
            style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
        backgroundColor: Colors.pink[400],
      ),
      body: GridView.builder(
        itemCount: item.length,
        itemBuilder: (context, index) => item[index],
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      
      ),
    );
  }
}
