import 'package:calorie_app/widgets/caloriecard.dart';
import 'package:flutter/material.dart';
import 'package:calorie_app/models/meal_data.dart';


class Caloriescreen extends StatefulWidget {
  const Caloriescreen({super.key});

  @override
  State<Caloriescreen> createState() => _CaloriescreenState();
}

class _CaloriescreenState extends State<Caloriescreen> {

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
              Caloriecard(
                calories: '300kcal', 
                label: 'Meals', 
                mealList: meals300,
                ),

               Caloriecard(
                calories: '600kcal', 
                label: 'Meals', 
                mealList: meals600,
                ),
            ],
          ),
          SizedBox(height: 50),
          Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Caloriecard(
                calories: '900kcal', 
                label: 'Meals', 
                mealList: meals900,
                ),
              Caloriecard(
                calories: '1200kcal', 
                label: 'Meals', 
                mealList: meals1200,
                ),
            ],
          ),
        ],
      ),
      
    );
  }
}