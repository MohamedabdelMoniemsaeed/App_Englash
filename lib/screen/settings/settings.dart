import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tuko/main.dart';
import 'package:tuko/theme/porvider.dart';
import 'package:tuko/theme/theme.dart';

class Settings extends StatefulWidget {
  Settings({super.key});

  // Color? color = Colors.blue;
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  late Mode providerMode; //Provider

  @override
  Widget build(BuildContext context) {
    providerMode = Provider.of(context); //Provider
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Spacer(),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(bottom: 10),
            child: DropdownMenu(
                label: Text('Theme Colors'),
                enableSearch: false,
                onSelected: (value) {
                  if (value != null) providerMode.setmode(value); //Provider
                },
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                width: 300,
                hintText: "S",
                dropdownMenuEntries: <DropdownMenuEntry<ThemeData>>[
                  DropdownMenuEntry(value: ThemeApp.boyTheme, label: "Blue"),
                  DropdownMenuEntry(value: ThemeApp.girlTheme, label: "Pink"),
                ]),
          ),
        ],
      ),
    );
  }
}
