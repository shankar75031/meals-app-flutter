import 'package:flutter/material.dart';
import 'package:homely_meals/screens/categories_screen.dart';
import 'package:homely_meals/screens/category_meals_screen.dart';
import 'package:homely_meals/screens/filters_screen.dart';
import 'package:homely_meals/screens/meal_detail_screen.dart';
import 'package:homely_meals/screens/tabs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Homely Meals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              bodyText2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              headline6: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(),
        CategoryMealsScreen.ROUTE_NAME: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.ROUTE_NAME: (ctx) => MealDetailScreen(),
        FiltersScreen.ROUTE_NAME: (ctx) => FiltersScreen(),
      },
      onGenerateRoute: (settings) {
        print("onGenerateRoute CALLED");
        print(settings.arguments);
        // return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      },
      onUnknownRoute: (settings) {
        // Reached when flutter failed to build a screen. Kind of like a 404 page in web
        return MaterialPageRoute(builder: (ctx) => TabsScreen());
      },
    );
  }
}
