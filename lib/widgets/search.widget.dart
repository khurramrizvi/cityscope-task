import 'package:cityscope_task/pages/home/controller/home.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchWidget extends ConsumerWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 75,
      child: TextField(
        controller:
            ref.read(homeControllerProvider.notifier).searchBoxController,
        onChanged: ref.read(homeControllerProvider.notifier).searchArtWork,
        decoration: const InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black,
            size: 24,
          ),
          hintText: "Search",
          hintStyle: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.black,
            letterSpacing: 1.2,
            fontSize: 18,
          ),
          isDense: true,
          // contentPadding: EdgeInsets.all(12),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
        ),
      ),
    );
  }
}
