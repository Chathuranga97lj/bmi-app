import 'package:flutter/material.dart';

class ValueComponent extends StatefulWidget {
  String title;
  int value;

  Function(int) data;

  ValueComponent({required this.title, required this.value, required this.data});

  @override
  State<ValueComponent> createState() => _ValueComponentState();
}

class _ValueComponentState extends State<ValueComponent> {
  // lately assume value - when class creating
  late int value;

  // when class is create this is the first process
  @override
  void initState() {
    value = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white12,
        height: 170,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              widget.title,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              value.toString(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkResponse(
                  onTap: (){
                    setState(() { // when touch the - decrease value and refresh the ui
                      value--;
                    });
                    widget.data(value); // pass value to the out of the class
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.black54,
                    radius: 30,
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                InkResponse(
                  onTap: (){
                    setState(() { // when touch the - decrease value and refresh the ui
                      value++;
                    });
                    widget.data(value); // pass value to the out of the class
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.black54,
                    radius: 30,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
