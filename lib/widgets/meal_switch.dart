import 'package:flutter/material.dart';

class MealSwitch extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool value;
  final void Function(bool isChecked) onFilterSet;

  const MealSwitch({
    super.key,
    required this.title,
    required this.subtitle,
    required this.value,
    required this.onFilterSet,
  });

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: value,
      onChanged: (isChecked) {
        onFilterSet(isChecked);
      },
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
      ),
      subtitle: Text(
        subtitle,
        style: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
      ),
      activeColor: Theme.of(context).colorScheme.tertiary,
      contentPadding: const EdgeInsets.only(left: 34, right: 22),
    );
  }
}
