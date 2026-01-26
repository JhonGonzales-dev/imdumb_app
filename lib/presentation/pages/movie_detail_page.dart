import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/utils/image_utils.dart';
import '../../domain/entities/movie_detail.dart';
import '../providers/movie/movie_provider.dart';
import '../providers/movie/movie_state.dart';

class MovieDetailPage extends ConsumerStatefulWidget {
  const MovieDetailPage(this.idMovie, {super.key});
  final int idMovie;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MovieDetailPageState();
}

class _MovieDetailPageState extends ConsumerState<MovieDetailPage> {
  MovieDetailEntity? movie;
  @override
  void initState() {
    super.initState();
    ref.read(movieProvider.notifier).loadDetailMovie(widget.idMovie);
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<MovieState>(movieProvider, (previous, next) {
      next.maybeWhen(
        orElse: () => {},
        successDetailMovie: (data) => {setState(() => movie = data)},
        error: (message) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Error: $message')),
          );
        },
      );
    });
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: const Icon(Icons.favorite),
      ),
      body: movie != null
          ? CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: 320,
                  pinned: true,
                  backgroundColor: Colors.black,
                  flexibleSpace: FlexibleSpaceBar(
                    title: Text(movie?.title ?? ''),
                    background: Image.network(
                      ImageUtils.posterUrl(movie?.backdrop_path ?? ''),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(movie?.overview ?? ''),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  sliver: SliverGrid(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          alignment: Alignment.center,
                          child: Text(
                            movie!.genres![index].name ?? '',
                            style: const TextStyle(color: Colors.black),
                          ),
                        );
                      },
                      childCount: movie!.genres!.length,
                    ),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      childAspectRatio: 3,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          'Reparto',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                      const SizedBox(height: 12),
                      SizedBox(
                          height: 180,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              itemCount: movie!.credits.cast.length,
                              separatorBuilder: (_, __) =>
                                  const SizedBox(width: 12),
                              itemBuilder: (context, index) {
                                final actor = movie!.credits.cast[index];
                                return Column(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child: actor.profilePath != null
                                            ? Image.network(
                                                ImageUtils.posterUrl(
                                                    actor.profilePath!),
                                                width: 100,
                                                height: 140,
                                                fit: BoxFit.cover,
                                              )
                                            : const Icon(
                                                Icons.no_photography_outlined)),
                                    const SizedBox(height: 8),
                                    SizedBox(
                                      child: Text(
                                        actor.name ?? '',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(fontSize: 12),
                                      ),
                                    )
                                  ],
                                );
                              }))
                    ],
                  ),
                )
              ],
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
