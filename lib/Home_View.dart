import 'package:bmi_app/components/gender_component.dart';
import 'package:bmi_app/components/height_component.dart';
import 'package:flutter/material.dart';

import 'components/height_component.dart';

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
        leading: Icon(
            Icons.menu), // left side component >> items, right side >> actions
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                GenderComponent(icon: Icons.male, name: 'MALE'),
                SizedBox(
                  width: 10,
                ),
                GenderComponent(icon: Icons.female, name: 'FEMALE')
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: HeightComponent(height: (h){
              print(h);
            }),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.white12,
                    height: 170,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'WEIGHT',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          '74',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.black54,
                              radius: 30,
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.black54,
                              radius: 30,
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    color: Colors.white12,
                    height: 170,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'WEIGHT',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          '74',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.black54,
                              radius: 30,
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.black54,
                              radius: 30,
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          Container(
            color: Colors.pink,
            width: double.infinity,
            height: 60,
            child: Center(
                child: Text(
              'Calculate your BMI',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
            )),
          )
        ],
      ),
    );
  }
}
