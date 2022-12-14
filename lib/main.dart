// ignore_for_file: member-ordering-extended

import 'package:flutter/material.dart';
import 'package:places/ui/screens/sight_list_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SightListScreen(),
    );
  }
}
