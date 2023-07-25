import 'package:flutter/material.dart';

class IconLearn extends StatelessWidget {
  const IconLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Icon Yapısı"),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.yellow,
            width: 300,
            child: IconButton(
              padding: EdgeInsets.all(20),
              onPressed: () {},
              icon: Icon(Icons.account_balance),
              color: Colors.green,
              iconSize: 50,
              alignment: Alignment.center,
            ),
          ),
          IconButton(
            padding: EdgeInsets.all(20),
            onPressed: () {},
            icon: Icon(Icons.account_balance),
            color: IconsColor().iconRenk,
            iconSize: IconSizes().iconSmall,
            alignment: Alignment.center,
          ),
          IconButton(
            padding: EdgeInsets.all(20),
            onPressed: () {},
            icon: Icon(Icons.account_balance),
            color: IconsColor().iconRenk,
            iconSize: IconSizes().iconSmall,
            alignment: Alignment.center,
          ),
          IconButton(
            padding: EdgeInsets.all(20),
            onPressed: () {},
            icon: Icon(Icons.account_balance),
            color: IconsColor().iconRenk,
            iconSize: IconSizes.iconLarge,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}

class IconSizes {
  final double iconSmall = 40;
  static const double iconLarge = 80;
}

class IconsColor {
  final Color iconRenk = const Color(0xffED617F);
}
