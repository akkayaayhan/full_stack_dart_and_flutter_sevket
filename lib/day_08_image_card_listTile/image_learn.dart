import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});
  final String path =
      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Yapısı'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Image(
              width: 200,
              height: 200,
              image: NetworkImage(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
            ),
          ),
          Image.network(height: 200, path),
          UrfaResimlerWidget(),
        ],
      ),
    );
  }
}

class UrfaResimlerWidget extends StatelessWidget {
  const UrfaResimlerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(
        ImageItems().urfaResim,
        width: 200,
        height: 200,
      ),
    );
  }
}

class ImageItems {
  final String urfaResim = "assets/urfa1.jpg";
}
