import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Yapısı'),
      ),
      body: Column(
        children: [
          TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.green;
                }
                return Colors.red;
              })),
              onPressed: () {},
              child: Text('Kaydet')),
          ElevatedButton(
            onPressed: null,
            child: Text('data'),
          ),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(backgroundColor: Colors.red),
            child: SizedBox(
              child: Text('data'),
              height: 20,
              width: 20,
            ),
          ),
          OutlinedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.person),
              label: Text('Kişi Ekle')),
        ],
      ),
    );
  }
}
