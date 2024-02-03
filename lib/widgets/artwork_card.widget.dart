import 'package:cityscope_task/pages/details/view/detail.view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ArtWorkCard extends ConsumerWidget {
  const ArtWorkCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //250*360 -> w*h
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const DetailView(),
        ),
      ),
      child: Container(
        // width: 160,
        // height: 220,
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.8,
            color: Colors.grey,
          ),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 160,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0.1,
                  color: Colors.grey,
                ),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://indianexpress.com/wp-content/uploads/2016/07/vangogh_759-1.jpg',
                  ),
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  margin: const EdgeInsets.only(top: 12, right: 8),
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: const Text(
                    'Painting',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      letterSpacing: 0.7,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: const Column(
                children: [
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'The Starry Night',
                    style: TextStyle(
                      fontSize: 18,
                      letterSpacing: 0.7,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    'Vincent van Gogh',
                    style: TextStyle(
                      fontSize: 12,
                      letterSpacing: 0.7,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
