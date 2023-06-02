import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/providers/filters_provider.dart';
import 'package:meals_app/widgets/meal_switch.dart';

// import 'package:meals_app/screens/tabs.dart';
// import 'package:meals_app/widgets/main_drawer.dart';

class FiltersScreen extends ConsumerWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilters = ref.watch(filtersProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      body: Column(
        children: [
          MealSwitch(
            title: 'Gluten-free',
            subtitle: 'Only include gluten-free meals.',
            value: activeFilters[Filter.glutenFree]!,
            onFilterSet: (isChecked) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.glutenFree, isChecked);
            },
          ),
          MealSwitch(
            title: 'Lactose-free',
            subtitle: 'Only include lactose-free meals.',
            value: activeFilters[Filter.lactoseFree]!,
            onFilterSet: (isChecked) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.lactoseFree, isChecked);
            },
          ),
          MealSwitch(
            title: 'Vegetarian',
            subtitle: 'Only include vegetarian meals.',
            value: activeFilters[Filter.vegetarian]!,
            onFilterSet: (isChecked) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.vegetarian, isChecked);
            },
          ),
          MealSwitch(
            title: 'Vegan',
            subtitle: 'Only include vegan meals.',
            value: activeFilters[Filter.vegan]!,
            onFilterSet: (isChecked) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.vegan, isChecked);
            },
          ),
        ],
      ),
    );
  }
}
