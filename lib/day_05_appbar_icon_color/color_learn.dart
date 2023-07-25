import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Color Yapısı')),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            height: 200,
            width: 200,
            color: ColorsItems.galeri,
            child: Text(
              'Merhaba',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Theme.of(context).errorColor),
            ),
          )
        ],
      ),
    );
  }
}

class ColorsItems {
  static const Color anarenk = Colors.indigoAccent;
  static const Color tema = Color.fromRGBO(198, 237, 97, 1);
  static const Color galeri = Color(0xffAEDDF11);
}
