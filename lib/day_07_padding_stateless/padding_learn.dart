import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Padding Yapısı'),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width,

            height: MediaQuery.of(context).size.height *
                0.2, //ekran yüksekliğinin %30 si
            color: Colors.red,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Container(
            width: MediaQuery.of(context).size.width,

            height: MediaQuery.of(context).size.height *
                0.2, //ekran yüksekliğinin %30 si
            color: Colors.yellow,
          ),
        ),
        Padding(
          padding: ProjectPaddings.pagePaddingHorizantal +
              ProjectPaddings.pagePaddingVertical,
          child: Container(
            width: MediaQuery.of(context).size.width,

            height: MediaQuery.of(context).size.height *
                0.2, //ekran yüksekliğinin %30 si
            color: Colors.blue,
          ),
        ),
        Padding(
          padding: ProjectPaddings.pagePaddingHorizantal,
          child: Container(
            width: MediaQuery.of(context).size.width,

            height: MediaQuery.of(context).size.height *
                0.1, //ekran yüksekliğinin %30 si
            color: Colors.green,
          ),
        )
      ]),
    );
  }
}

class ProjectPaddings {
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 20);
  static const pagePaddingHorizantal = EdgeInsets.symmetric(horizontal: 10);
}
