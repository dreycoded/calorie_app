import 'package:calorie_app/widgets/caloriecard.dart';
import 'package:flutter/material.dart';

class Caloriescreen extends StatelessWidget {
  const Caloriescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Calorie Glory App'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Caloriecard(calories: '300kcal', label: 'Meals', mealdisplay: 'Displayed Text'),
              Caloriecard(calories: '600kcal', label: 'Meals', mealdisplay: 'Displayed Text'),
            ],
          ),
          SizedBox(height: 50),
          Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Caloriecard(calories: '900kcal', label: 'Meals', mealdisplay: 'Displayed Text'),
              Caloriecard(calories: '1200kcal', label: 'Meals', mealdisplay: 'Displayed Text'),
            ],
          ),
        ],
      ),
      
    );
  }
}