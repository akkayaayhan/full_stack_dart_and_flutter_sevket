import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Yapısı'),
      ),
      body: Stack(
        children: [
          // Positioned.fill(
          //     top: 20,
          //     child: Container(
          //       color: Colors.amber,
          //     )),
          // Positioned(
          //     bottom: 0,
          //     height: 100,
          //     width: 100,
          //     child: Container(
          //       color: Colors.green,
          //     )),
          // Positioned(
          //     right: 10,
          //     height: 100,
          //     width: 70,
          //     child: Container(
          //       color: Colors.red,
          //     )),

          Stack(
            children: [
              Image.network(width: 500, 'https://picsum.photos/200/300'),
              Center(
                  child: Text(
                'Doğa Resimleri',
                style: TextStyle(color: Colors.blue, fontSize: 30),
              ))
            ],
          )
        ],
      ),
    );
  }
}
