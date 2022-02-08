import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slider',
      home: Scaffold(
        appBar: AppBar(title: const Text('Slider')),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}


class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  double slider = 10;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: slider,
      max: 10,
      divisions: 10,
      label: slider.round().toString(),
      onChanged: (double value) {
        setState(() {
          slider = value;
        });
      },
    );
  }
}

