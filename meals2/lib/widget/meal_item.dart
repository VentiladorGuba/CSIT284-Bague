import 'package:flutter/material.dart';
import 'package:meals2/models/meal.dart';

class MealItem extends StatelessWidget {
  const MealItem({super.key});

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          FadeInImage(
            placeholder: MemoryImage(TransparentImage),
            image: NetworkImage(meal.imageUrl),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Text(meal.title)
              )
        ],
      ),
    );
  }
}
