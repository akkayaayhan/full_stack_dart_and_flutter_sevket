import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colum-Row-Stack Yapıları'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              child: Text('a' * 500),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              color: Colors.blue,
              width: 400,
              height: 200,
            ),
          ),
          Spacer(
            flex: 2,
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Text('a' * 500),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              color: Colors.red,
              width: 400,
              height: 200,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Text('a' * 500),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              color: Colors.green,
              width: 400,
              height: 300,
            ),
          ),
          Spacer(
            flex: 2,
          ),
          Expanded(
            flex: 4,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('İçerikler'),
                  Text('İçerikler'),
                  Text('İçerikler'),
                  Text('İçerikler'),
                ]),
          )
        ],
      ),
    );
  }
}
