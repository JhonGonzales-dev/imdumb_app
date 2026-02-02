import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:imdumb/core/config/app_config.dart';
import 'package:imdumb/core/utils/extension.dart';
import 'package:imdumb/domain/entities/movie_category.dart';
import 'package:imdumb/presentation/providers/movie/movie_state.dart';
import '../../core/utils/constant.dart';
import '../../core/utils/image_utils.dart';
import '../providers/movie/movie_provider.dart';
import '../providers/splash/splash_provider.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  List<CategoryEntity> categoryList = [];

  int currentSlideMovie = 0;

  @override
  void initState() {
    ref.read(movieProvider.notifier).loadCategoryMovie();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final config = ref.watch(appConfigProvider);
    final splashState = ref.watch(splashProvider);

    ref.listen<MovieState>(movieProvider, (previous, next) {
      next.maybeWhen(
        orElse: () => {},
        changeCurrentSlide: (val) {
          setState(() => currentSlideMovie = val);
        },
        successCat: (data) => {setState(() => categoryList = data)},
        error: (message) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Error: $message')),
          );
        },
      );
    });
    return Scaffold(
        appBar: AppBar(
          backgroundColor: config.primaryColor,
          title: Text(splashState.maybeWhen(
            orElse: () => 'IMDUMB',
            success: (config) => config.initialMessage,
          )),
          actions: [
            SvgPicture.asset(
              '${config.flavorMode.assetsPath}/logo.svg',
              fit: BoxFit.contain,
            )
          ],
        ),
        body: categoryList.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : GridView.builder(
                padding: const EdgeInsets.all(20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: categoryList.length,
                itemBuilder: (context, index) {
                  final category = categoryList[index];
                  return InkWell(
                    onTap: () {
                      context.pushNamed('movie_discover', extra: category);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                            image: NetworkImage(ImageUtils.posterUrl(
                                genrePosters[category.name] ?? '')),
                            fit: BoxFit.cover),
                      ),
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.9),
                                Colors.transparent,
                              ],
                            ),
                          ),
                          alignment: Alignment.bottomLeft,
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            category.name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    ),
                  );
                }));
  }
}
