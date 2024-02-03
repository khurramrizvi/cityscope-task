import 'package:cityscope_task/providers/category_selector.provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoryList extends ConsumerWidget {
  final List categories = [
    'Painting',
    'Textile',
    'Sculpture',
    'Painting1',
    'Textile1',
    'Sculpture1'
  ];
  CategoryList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(categorySelectorProvider);

    return SizedBox(
      height: 50,
      child: ListView.separated(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ChoiceChip(
            selectedColor:
                ref.read(categorySelectorProvider.notifier).selectedIndex ==
                        index
                    ? Colors.black
                    : Colors.white,
            showCheckmark: false,
            labelStyle: TextStyle(
              color:
                  ref.read(categorySelectorProvider.notifier).selectedIndex ==
                          index
                      ? Colors.white
                      : Colors.black,
            ),
            label: Text(
              categories[index],
              style: const TextStyle(
                letterSpacing: 1,
                fontWeight: FontWeight.w500,
              ),
            ),
            selected:
                ref.read(categorySelectorProvider.notifier).selectedIndex ==
                    index,
            onSelected: (selected) {
              if (selected) {
                ref.read(categorySelectorProvider.notifier).selectIndex(index);
              }
            },
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: 10.0,
        ),
      ),
    );
  }
}
