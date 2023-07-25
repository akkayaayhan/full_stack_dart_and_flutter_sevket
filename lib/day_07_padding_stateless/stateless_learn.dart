// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:full_stack_dart_and_flutter_sevket/day_07_padding_stateless/padding_learn.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stateless Yapısı'),
        ),
        body: Column(
          children: [
            _TextWidget(),
            ProjectPadding(containerColor: Colors.red),
            ProjectPadding(
              containerColor: Colors.blue,
            ),
          ],
        ));
  }
}

class ProjectPadding extends StatelessWidget {
  const ProjectPadding({
    Key? key,
    required this.containerColor,
  }) : super(key: key);

  final Color containerColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ProjectPaddings.pagePaddingHorizantal +
          ProjectPaddings.pagePaddingVertical,
      child: Container(
        width: MediaQuery.of(context).size.width,

        height: MediaQuery.of(context).size.height *
            0.2, //ekran yüksekliğinin %30 si
        color: containerColor,
      ),
    );
  }
}

class _TextWidget extends StatelessWidget {
  const _TextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Merhaba',
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
