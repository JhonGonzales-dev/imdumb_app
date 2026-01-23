import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/movie/movie_provider.dart';

class Carousel extends ConsumerStatefulWidget {
  const Carousel({
    super.key,
    required this.items,
    required this.controller,
  });
  final List<Widget> items;
  final PageController controller;

  @override
  CarouselRiskState createState() => CarouselRiskState();
}

class CarouselRiskState extends ConsumerState<Carousel>
    with AutomaticKeepAliveClientMixin {
  late PageController pageController;
  double currentPage = 0.0;

  void listener() {
    setState(() {
      currentPage = pageController.page!;
    });
  }

  @override
  void initState() {
    super.initState();
    pageController = widget.controller;
    pageController.addListener(listener);
  }

  @override
  void dispose() {
    pageController.removeListener(listener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return PageView.builder(
        physics: const ClampingScrollPhysics(),
        controller: pageController,
        itemCount: widget.items.length,
        onPageChanged: (value) {
          ref.watch(movieProvider.notifier).changeCurrentSlideMovie(value);
        },
        itemBuilder: (BuildContext context, int index) {
          double scale = 0.0;

          if (index == currentPage) {
            scale = 1;
          } else if (index < currentPage) {
            scale = max(1 - (currentPage - index), 0.8);
          } else {
            scale = max(1 - (index - currentPage), 0.8);
          }

          return Transform.scale(
            scale: scale,
            child: Opacity(
                opacity: scale,
                child: widget.items[index % widget.items.length]),
          );
        });
  }

  @override
  bool get wantKeepAlive => true;
}
