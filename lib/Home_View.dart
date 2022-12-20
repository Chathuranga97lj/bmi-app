import 'package:flutter/material.dart';

class BMIView extends StatefulWidget {
  const BMIView({Key? key}) : super(key: key);

  @override
  State<BMIView> createState() => _BMIViewState();
}

class _BMIViewState extends State<BMIView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
        backgroundColor: Color(0xFF04040C),
        leading: Icon(Icons.menu),  // left side component >> items, right side >> actions
      ),
    );
  }
}
