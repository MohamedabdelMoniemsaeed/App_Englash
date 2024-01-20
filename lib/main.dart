import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tuko/screen/home/home_Screen.dart';
import 'package:tuko/theme/porvider.dart';
import 'package:tuko/theme/theme.dart';

void main() {
  runApp(ChangeNotifierProvider(
    //Provider
    create: (context) => Mode(), //Provider
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  late Mode providerMode; //Provider
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    providerMode = Provider.of(context);
    return MaterialApp(
      theme: providerMode.mode,
      darkTheme: ThemeApp.girlTheme,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
