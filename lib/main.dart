// ignore_for_file: member-ordering-extended

import 'dart:developer';
import 'package:flutter/material.dart';

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
      home: const MyFirstWidget(
        title: 'Flutter App',
      ),
    );
  }
}

class MyFirstWidget extends StatefulWidget {
  final String title;
  const MyFirstWidget({Key? key, required this.title}) : super(key: key);

  @override
  State<MyFirstWidget> createState() => _MyFirstWidgetState();
}

class _MyFirstWidgetState extends State<MyFirstWidget> {
  int _renderCounter = 0;

  void _incrementCounter() {
    setState(() {
      _renderCounter++;
      log(_renderCounter.toString());
    });
  }

  void _printCtx(BuildContext ctx) {
    log(ctx.runtimeType.toString());
  }

  @override
  Widget build(BuildContext context) {
    // incrementCounter();
    // print(context.runtimeType);
    _printCtx(context);

    return Container(
      child: const Center(
        child: Text('Hello!'),
      ),
    );
  }
}
