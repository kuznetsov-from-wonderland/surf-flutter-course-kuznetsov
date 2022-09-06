import 'package:flutter/material.dart';
import 'package:places/ui/styleguide/styleguide.dart';

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  State<SightListScreen> createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(72.0),
          child: Container(
            child: const FancyText(),
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 16),
          ),
        ),
        elevation: 0,
      ),
      body: Container(
        child: Container(),
      ),
    );
  }
}

class FancyText extends StatelessWidget {
  const FancyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        text: 'С',
        style: TextStyle(
          color: CustomColorPalette.green,
          fontFamily: "Roboto",
          fontSize: 32,
          fontWeight: FontWeight.w700,
          height: 112 / 100,
        ),
        children: [
          TextSpan(
            text: "писок",
            style: TextStyle(
              color: CustomColorPalette.textPrimary,
            ),
          ),
          TextSpan(text: "\n"),
          TextSpan(
            text: "и",
            style: TextStyle(
              color: CustomColorPalette.yellow,
            ),
          ),
          TextSpan(
            text: "нтересных мест",
            style: TextStyle(
              color: CustomColorPalette.textPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
