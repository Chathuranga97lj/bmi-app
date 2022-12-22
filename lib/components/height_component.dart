import 'package:flutter/material.dart';

class HeightComponent extends StatefulWidget {
  Function(int) height;

  HeightComponent({required this.height});

  @override
  State<HeightComponent> createState() => _HeightComponentState();
}

class _HeightComponentState extends State<HeightComponent> {
  double value = 150;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white12,
      height: 170,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'HEIGHT',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            '${value.toStringAsFixed(0)} cm',
            style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          Slider(
            value: value,
            onChanged: (v) {
              setState(() {
                value = v;
              });
            },
            min: 0,
            max: 200,
          )
        ],
      ),
    );
  }
}
