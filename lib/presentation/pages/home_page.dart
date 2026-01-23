import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:imdumb/presentation/providers/movie/movie_state.dart';
import 'package:imdumb/presentation/widgets/movie_poster.dart';

import '../../domain/entities/movie.dart';
import '../providers/movie/movie_provider.dart';
import '../providers/splash/splash_provider.dart';
import '../widgets/carousel_widget.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  List<MovieEntity> movieList = [];
  int currentSlideMovie = 0;
  PageController pageController = PageController(viewportFraction: 0.7);
  @override
  void initState() {
    ref.read(movieProvider.notifier).load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final splashState = ref.watch(splashProvider);

    ref.listen<MovieState>(movieProvider, (previous, next) {
      next.maybeWhen(
        orElse: () => {},
        success: (resp) {
          setState(() => movieList = resp);
        },
        changeCurrentSlide: (val) {
          setState(() => currentSlideMovie = val);
        },
        error: (message) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Error: $message')),
          );
        },
      );
    });
    return Scaffold(
      appBar: AppBar(
        title: Text(splashState.maybeWhen(
          orElse: () => 'IMDUMB',
          success: (config) => config.initialMessage,
        )),
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
                      return MoviePoster(movie: movieList[index]);
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
                        text: movieList[currentSlideMovie].rating.toString(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
