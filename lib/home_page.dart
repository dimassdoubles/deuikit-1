import 'package:flutter/material.dart';
import 'package:ui_kit/demo_screens/button_screen.dart';
import 'package:ui_kit/demo_screens/card_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const positive = "Positive";
  static const negative = "Negative";
  static const inActive = "In Active";

  static const primary = "Primary";
  static const secondary = "Secondary";
  static const tertiary = "Tertiary";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UI Kit"),
      ),
      body: ListView(
        children: [
          ...ListTile.divideTiles(
            context: context,
            tiles: [
              ListTile(
                title: const Text("Button"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ButtonScreen();
                  }));
                },
              ),
              ListTile(
                title: const Text("Cards"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const CardScreen();
                  }));
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
