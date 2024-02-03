import 'package:cached_network_image/cached_network_image.dart';
import 'package:cityscope_task/pages/details/view/detail.view.dart';
import 'package:cityscope_task/pages/home/view/home.view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ArtWorkCard extends ConsumerWidget {
  final int id;
  final String artName;
  final String artist;
  final String artCategory;
  final String artworkUrl;
  final String description;
  const ArtWorkCard({
    super.key,
    required this.id,
    required this.artName,
    required this.artist,
    required this.artCategory,
    required this.artworkUrl,
    required this.description,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //250*360 -> w*h
    return GestureDetector(
      onTap: () => context.go(
        '/${DetailView.name}',
        extra: {
          'id': id,
          'artName': artName,
          'artist': artist,
          'artCategory': artCategory,
          'artworkUrl': artworkUrl,
          'description': description,
        },
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
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: CachedNetworkImageProvider(
                    artworkUrl,
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
                  child: Text(
                    artCategory,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
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
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    artName,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 18,
                      letterSpacing: 0.7,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    artist.split(',').first,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 12,
                      letterSpacing: 0.7,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
