import 'package:flutter/material.dart';

class GenderComponent extends StatelessWidget {
  IconData icon;
  String name;

  GenderComponent(this.icon, this.name); // constructor for icon and name

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          color: Colors.white12,
          height: 170,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 80,
              ),
              Text(
                name,
                style: TextStyle(color: Colors.white, fontSize: 25),
              )
            ],
          ),
        )
    );
  }
}
