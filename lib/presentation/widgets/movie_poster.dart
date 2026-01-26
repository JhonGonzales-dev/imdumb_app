import 'package:flutter/material.dart';
import '../../core/utils/image_utils.dart';

class MoviePoster extends StatelessWidget {
  final String posterPath;

  const MoviePoster({super.key, required this.posterPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
            image: NetworkImage(ImageUtils.posterUrl(posterPath)),
            fit: BoxFit.cover),
      ),
    );
  }
}
