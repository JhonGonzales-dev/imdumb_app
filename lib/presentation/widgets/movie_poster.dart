import 'package:flutter/material.dart';
import 'package:imdumb/domain/entities/movie.dart';

import '../../core/utils/image_utils.dart';

class MoviePoster extends StatelessWidget {
  final MovieEntity movie;

  const MoviePoster({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
            image: NetworkImage(ImageUtils.posterUrl(movie.posterPath)),
            fit: BoxFit.cover),
      ),
    );
  }
}
