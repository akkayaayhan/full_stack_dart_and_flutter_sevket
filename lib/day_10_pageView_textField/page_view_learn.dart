import 'package:flutter/material.dart';

import '../day_03_scaffold_widget/scaffold_widget.dart';
import '../day_08_image_card_listTile/card_learn.dart';
import '../day_08_image_card_listTile/image_learn.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController(viewportFraction: 0.8);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          ImageLearn(),
          CardLearn(),
          ScaffoldWidget(),
        ],
      ),
    );
  }
}
