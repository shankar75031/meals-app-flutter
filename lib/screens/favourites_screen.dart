import 'package:flutter/material.dart';
import 'package:homely_meals/models/meal.dart';
import 'package:homely_meals/widgets/meal_item.dart';

class FavouritesScreen extends StatelessWidget {
  final List<Meal> _favouriteMeals;

  FavouritesScreen(this._favouriteMeals);

  @override
  Widget build(BuildContext context) {
    return _favouriteMeals.isEmpty
        ? Center(
            child: Text("You have no favourites yet - start adding some!"),
          )
        : ListView.builder(
            itemBuilder: (ctx, index) {
              return MealItem(
                id: _favouriteMeals[index].id,
                title: _favouriteMeals[index].title,
                imageUrl: _favouriteMeals[index].imageUrl,
                affordability: _favouriteMeals[index].affordability,
                complexity: _favouriteMeals[index].complexity,
                duration: _favouriteMeals[index].duration,
              );
            },
            itemCount: _favouriteMeals.length,
          );
  }
}
