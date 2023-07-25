import 'package:flutter/material.dart';

import 'day_09_column_row_stack_listTile/stack_learn.dart';
import 'day_10_pageView_textField/page_view_learn.dart';
import 'day_10_pageView_textField/text_field_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TexFieldLearn(),
    );
  }
}
