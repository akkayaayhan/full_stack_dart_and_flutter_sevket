import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Yapısı'),
      ),
      body: Column(
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            color: Colors.amber,
            margin: EdgeInsets.all(10),
            child:
                SizedBox(height: 200, width: 100, child: Text('Card 1' * 50)),
          ),
          // Card(
          //   shape: StadiumBorder(),
          //   color: Colors.amber,
          //   margin: EdgeInsets.all(10),
          //   child:
          //       SizedBox(height: 200, width: 100, child: Text('Card 2' * 50)),
          // ),
          OgrenciBilgi(
            child: ListTile(title: Text('Şevket')),
          ),
          OgrenciListesi(),
          OgrenciListesi(),
          OgrenciListesi(),
          OgrenciListesi(),
          OgrenciListesi(),
          OgrenciListesi(),
        ],
      ),
    );
  }
}

class OgrenciListesi extends StatelessWidget {
  const OgrenciListesi({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber,
      child: ListTile(
        leading: Icon(Icons.person),
        title: Text('Ayhan Akkaya'),
        subtitle: Text('Sayısal 1 Sınıfı'),
        trailing: Icon(Icons.arrow_forward),
      ),
    );
  }
}

class OgrenciBilgi extends StatelessWidget {
  const OgrenciBilgi({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: child,
    );
  }
}
