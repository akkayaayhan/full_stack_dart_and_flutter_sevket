import 'package:flutter/material.dart';

class ScaffoldWidget extends StatelessWidget {
  const ScaffoldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold Dersi'),
      ),
      body: Text("Merhaba"),
      backgroundColor: Colors.red[300],
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // tıklanma olayı
          showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                    height: 200,
                    color: Colors.yellow,
                  ));
        },
        child: Icon(Icons.save),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: Drawer(
        backgroundColor: Colors.green,
        child: ListTile(
          trailing: Icon(Icons.person),
          title: Text('Ayhan akkaya'),
          subtitle: Text('yazılım geliştirme uzmanı'),
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        decoration: ProjeContainerDecoration(),
        child: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Anasayfa'),
          BottomNavigationBarItem(
              icon: Icon(Icons.browse_gallery), label: 'Galeri'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Arama')
        ]),
      ),
    );
  }
}

class ProjeContainerDecoration extends BoxDecoration {
  ProjeContainerDecoration()
      : super(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(colors: [Colors.red, Colors.black]),
            boxShadow: [
              BoxShadow(
                  color: Colors.green, offset: Offset(0.1, 1), blurRadius: 12)
            ],
            border: Border.all(width: 10, color: Colors.white12));
}
