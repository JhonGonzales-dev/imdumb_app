import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../domain/entities/movie_category.dart';
import '../../domain/entities/movies_discover.dart';
import '../providers/movie/movie_provider.dart';
import '../providers/movie/movie_state.dart';
import '../widgets/carousel_widget.dart';
import '../widgets/movie_poster.dart';

class MovieDiscoverPage extends ConsumerStatefulWidget {
  final CategoryEntity category;
  const MovieDiscoverPage(this.category, {super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MovieDiscoverPageState();
}

class _MovieDiscoverPageState extends ConsumerState<MovieDiscoverPage> {
  PageController pageController = PageController(viewportFraction: 0.7);
  List<MovieDiscoverEntity> movieList = [];
  int currentSlideMovie = 0;

  @override
  void initState() {
    super.initState();
    ref.read(movieProvider.notifier).loadDiscoverMovie(widget.category.id);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    ref.listen<MovieState>(movieProvider, (previous, next) {
      next.maybeWhen(
        orElse: () => {},
        changeCurrentSlide: (val) {
          setState(() => currentSlideMovie = val);
        },
        successDiscover: (data) => {setState(() => movieList = data)},
        error: (message) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Error: $message')),
          );
        },
      );
    });
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.category.name} Category'),
        centerTitle: true,
      ),
      body: movieList.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              children: [
                const SizedBox(height: 20),
                SizedBox(
                  height: size.height * 0.5,
                  child: Carousel(
                    controller: pageController,
                    items: List.generate(movieList.length, (index) {
                      return InkWell(
                        onTap: () {
                           context.pushNamed('movie_detail', extra: movieList[index].id);
                        },
                        child: MoviePoster(
                            posterPath: movieList[index].poster_path ?? ''),
                      );
                    }),
                  ),
                ),
                SizedBox(height: size.height * 0.04),
                Text(
                  movieList[currentSlideMovie].title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: Theme.of(context).textTheme.titleSmall,
                    children: [
                      const WidgetSpan(
                        child: Icon(Icons.star, size: 16, color: Colors.amber),
                        alignment: PlaceholderAlignment.middle,
                      ),
                      const TextSpan(text: ' '),
                      TextSpan(
                        text:
                            movieList[currentSlideMovie].popularity.toString(),
                      ),
                    ],
                  ),
                ),
                Container(
                    padding: const EdgeInsets.all(20),
                    child: Text(movieList[currentSlideMovie].overview))
              ],
            ),
    );
  }
}
