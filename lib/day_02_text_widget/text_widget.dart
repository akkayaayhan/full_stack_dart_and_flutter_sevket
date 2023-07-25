import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String musteri = "Şevket";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hoşgeldin $musteri",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                wordSpacing: 2,
                decoration: TextDecoration.underline,
                fontStyle: FontStyle.italic,
                letterSpacing: 2,
                color: Colors.red,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Selam $musteri",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: ProjeRenklerim.yaziRengi, fontSize: 20),
            ),
            Text(
              "Hello $musteri ${musteri.length}",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: ProjeStilleri.stilim,
            ),
          ],
        ),
      ),
    );
  }
}

class ProjeStilleri {
  static TextStyle stilim = const TextStyle(
    wordSpacing: 2,
    decoration: TextDecoration.underline,
    fontStyle: FontStyle.italic,
    letterSpacing: 2,
    color: Colors.red,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
}

class ProjeRenklerim {
  static Color yaziRengi = Colors.red;
}
