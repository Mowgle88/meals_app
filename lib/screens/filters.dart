import 'package:flutter/material.dart';
// import 'package:meals_app/screens/tabs.dart';
// import 'package:meals_app/widgets/main_drawer.dart';
import 'package:meals_app/widgets/meal_switch.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFreeFilterSet = false;
  var _lactoseFreeFilterSet = false;
  var _vegetarianFreeFilterSet = false;
  var _veganFreeFilterSet = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      // drawer: MainDrawer(
      //   onSelectScreen: (String identifier) {
      //     Navigator.of(context).pop();
      //     if (identifier == 'meals') {
      //       Navigator.of(context).pushReplacement(
      //         MaterialPageRoute(
      //           builder: (ctx) => const TabsScreen(),
      //         ),
      //       );
      //     }
      //   },
      // ),
      body: Column(
        children: [
          MealSwitch(
            title: 'Gluten-free',
            subtitle: 'Only include gluten-free meals.',
            value: _glutenFreeFilterSet,
            onFilterSet: (isChecked) {
              setState(() {
                _glutenFreeFilterSet = isChecked;
              });
            },
          ),
          MealSwitch(
            title: 'Lactose-free',
            subtitle: 'Only include lactose-free meals.',
            value: _lactoseFreeFilterSet,
            onFilterSet: (isChecked) {
              setState(() {
                _lactoseFreeFilterSet = isChecked;
              });
            },
          ),
          MealSwitch(
            title: 'Vegetarian',
            subtitle: 'Only include vegetarian meals.',
            value: _vegetarianFreeFilterSet,
            onFilterSet: (isChecked) {
              setState(() {
                _vegetarianFreeFilterSet = isChecked;
              });
            },
          ),
          MealSwitch(
            title: 'Vegan',
            subtitle: 'Only include vegan meals.',
            value: _veganFreeFilterSet,
            onFilterSet: (isChecked) {
              setState(() {
                _veganFreeFilterSet = isChecked;
              });
            },
          ),
        ],
      ),
    );
  }
}
