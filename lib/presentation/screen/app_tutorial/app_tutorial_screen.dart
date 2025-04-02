import 'package:flutter/material.dart';

class SlidesInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlidesInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlidesInfo>[
SlidesInfo('Busca la comida', 'Caption descripcion1', 'assets/images/1.png'),
SlidesInfo('Entrega rapida', 'Caption descripcion1', 'assets/images/2.png'),
SlidesInfo('Disfruta la comida', 'Caption descripcion1', 'assets/images/3.png'),
];



class AppTutorialScreen extends StatelessWidget {
  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const BouncingScrollPhysics(),
        children: slides.map(
          (slideData) => _Slide(
            title: slideData.title, 
            caption: slideData.caption, 
            imageUrl: slideData.imageUrl)
        ).toList(),
      ),
    );
  }
}

class _Slide extends StatelessWidget {

  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({
  required this.title, 
  required this.caption, 
  required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          children: [
            Image(
              image: AssetImage(imageUrl),
            )
          ],
        ),
      ),
      
      );
  }
}