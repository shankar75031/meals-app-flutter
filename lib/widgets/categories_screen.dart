import 'package:flutter/material.dart';
import 'package:homely_meals/dummy_data.dart';
import 'package:homely_meals/widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      children: DUMMY_CATEGORIES.map((category) {
        return CategoryItem(category.title, category.color);
      }).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
