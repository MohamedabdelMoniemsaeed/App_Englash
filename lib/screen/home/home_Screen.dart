import 'package:flutter/material.dart';
import 'package:tuko/models/numbers/image_number.dart';
import 'package:tuko/screen/colors/colors_Screen.dart';
import 'package:tuko/screen/family/family_screen.dart';
import 'package:tuko/screen/numbers/numbers_Screen.dart';
import 'package:tuko/screen/settings/settings.dart';
import 'package:tuko/screen/widget/tapRow.dart';
import 'package:tuko/theme/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final List<TapRow> item = [
      TapRow(
        name: 'Numbers',
        // color: Colors.white54,
        image: ImageNumber.backgroundimage,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NumbersScreen(),
            ),
          );
        },
      ),
      TapRow(
        name: 'Family',
        // color: Colors.white54,
        image: 'assets/images/family_members/backgroundimage.jpg',
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const FamilyScreen()));
        },
      ),
      TapRow(
        name: 'Colors',
        // color: Colors.white54,
        image: 'assets/images/colors/backgroundimage.jpg',
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ColorsScreen()));
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
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: const Text(
          "English",
        ),
      ),
      body: GridView.builder(
        itemCount: item.length,
        itemBuilder: (context, index) => item[index],
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      ),
      drawer: Drawer(
        child: Settings(),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
