import 'package:flutter/material.dart';

class GenderComponent extends StatefulWidget {
  IconData icon;
  String name;

  Function(bool) gender;
  GenderComponent({required this.icon, required this.name, required this.male, required this.female, required this.gender});

  bool male;
  bool female;

  @override
  State<GenderComponent> createState() => _GenderComponentState();
}

class _GenderComponentState extends State<GenderComponent> {
  Color color = Colors.white12;
  
  @override
  Widget build(BuildContext context) {

    return Expanded(
        child: InkWell(
          onTap: (){
            setState((){
              color = Colors.blueAccent;
              widget.gender(true);
            });
            print("Comp   Male: ${widget.male} ,  Female: ${widget.female}");
          },

          child: Container(
            color: color,
            height: 170,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  widget.icon,
                  color: Colors.white,
                  size: 80,
                ),
                Text(
                  widget.name,
                  style: TextStyle(color: Colors.white, fontSize: 25),
                )
              ],
            ),
          ),
        )
    );
  }
}

