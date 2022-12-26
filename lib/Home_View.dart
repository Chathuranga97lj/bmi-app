import 'package:bmi_app/components/gender_component.dart';
import 'package:bmi_app/components/height_component.dart';
import 'package:bmi_app/components/value_component.dart';
import 'package:flutter/material.dart';

class BMIView extends StatefulWidget {
  const BMIView({Key? key}) : super(key: key);

  @override
  State<BMIView> createState() => _BMIViewState();
}

class _BMIViewState extends State<BMIView> {
  double height = 0;
  int weight = 0;
  int age = 0;
  bool male = false;
  bool female = false;

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
                GenderComponent(icon: Icons.male, name: 'MALE', male: male, female: female,
                  gender: (value) {
                    setState((){
                      male = value;
                      female = false;
                      print("Home male, male: $male , female: $female");
                    });
                },
                ),
                SizedBox(
                  width: 10,
                ),
                GenderComponent(icon: Icons.female, name: 'FEMALE', male: male, female: female,
                  gender: (value) {
                  setState((){
                    female = value;
                    male = false;
                    print("Home female, male: $male , female: $female");
                  });

                },
                )
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: HeightComponent(height: (value) {
              height = value;
            }),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                ValueComponent(data: (value ) {
                  weight = value;
                }, title: 'WEIGHT', value: 50,),
                SizedBox(
                  width: 10,
                ),
                ValueComponent(data: (value) {
                  age = value;
                }, title: 'AGE', value: 20,)
              ],
            ),
          ),
          Spacer(),
          InkWell(
            onTap: (){
              print('Height- $height, Weight- $weight, Age- $age');

            },
            child: Container(
              color: Colors.pink,
              width: double.infinity,
              height: 60,
              child: Center(
                  child: Text(
                'Calculate your BMI',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )),
            ),
          )
        ],
      ),
    );
  }
}
