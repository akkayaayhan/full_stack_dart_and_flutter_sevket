import 'package:flutter/material.dart';

import '../day_03_scaffold_widget/scaffold_widget.dart';

class ContainerSizedBox extends StatelessWidget {
  const ContainerSizedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: Text('Container ve SizedBox'),
      ),
      body: Column(children: [
        SizedBox(
          width: 200,
          height: 200,
          child: Text('a' * 500),
        ),
        SizedBox.shrink(),
        SizedBox.square(
          dimension: 50,
          child: Text('b' * 50),
        ),
        Container(
          constraints: BoxConstraints(
            maxWidth: 200,
            minWidth: 100,
            maxHeight: 200,
            minHeight: 100,
          ),
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          decoration: ProjeContainerDecoration(),
        ),
        Container(
            width: 100,
            height: 100,
            child: Image.network('https://picsum.photos/200/300')),
        Container(
            width: 100,
            height: 100,
            child: Image.network('https://picsum.photos/200/300')),
        Container(
            width: 100,
            height: 100,
            child: Image.network('https://picsum.photos/200/300')),
      ]),
    );
  }
}
