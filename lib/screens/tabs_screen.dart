import 'package:flutter/material.dart';
import 'package:homely_meals/screens/favourites_screen.dart';
import './categories_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Homely Meals'),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.category),
                text: 'Categories',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Favourites',
              )
            ],
          ),
        ),
        body: TabBarView(
          // Number of children should be same as number of tabs
          children: [
            CategoriesScreen(),
            FavouritesScreen(),
          ],
        ),
      ),
      length: 2,
    );
  }
}
