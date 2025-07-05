import 'package:flutter/material.dart';

class Caloriecard extends StatelessWidget {
  final String calories;
  final String label;
  final String mealdisplay;

  const Caloriecard({
    required this.calories,
    required this.label,
    required this.mealdisplay,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: TextButton(
                onPressed: () {}, 
                child: Text(calories),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
           Text(label),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text(mealdisplay),
           ),
              ],
          );
  }
}