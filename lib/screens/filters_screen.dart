import 'package:flutter/material.dart';
import 'package:homely_meals/widgets/main_drawer.dart';

class FiltersScreen extends StatelessWidget {
  static const ROUTE_NAME = '/filters';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text(
          'Your Filters',
        ),
      ),
    );
  }
}
