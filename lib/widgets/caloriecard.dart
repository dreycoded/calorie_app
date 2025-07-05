import 'package:flutter/material.dart';
import 'dart:math';

class Caloriecard extends StatefulWidget {
  final String calories;
  final String label;
  final List<String> mealList;

  const Caloriecard({
    required this.calories,
    required this.label,
    required this.mealList,
    super.key});

  @override
  State<Caloriecard> createState() => _CaloriecardState();
}

class _CaloriecardState extends State<Caloriecard> {

  String selectedMeal = 'Tap any card to see a meal suggestion';

  void updateMeal() {
    final random = Random();
    int index = random.nextInt(widget.mealList.length);

    setState(() {
      selectedMeal = widget.mealList[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: TextButton(
                onPressed: updateMeal,
                child: Text(widget.calories),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
           Text(widget.label),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text(selectedMeal),
           ),
            ],
          );
  }
}