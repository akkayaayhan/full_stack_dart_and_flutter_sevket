import 'package:flutter/material.dart';

class TexFieldLearn extends StatefulWidget {
  const TexFieldLearn({super.key});

  @override
  State<TexFieldLearn> createState() => _TexFieldLearnState();
}

class _TexFieldLearnState extends State<TexFieldLearn> {
  final _textController = TextEditingController();
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Elemanları'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
            child: Column(
          children: [
            TextField(
              controller: _textController,
              maxLength: 20,
              keyboardType: TextInputType.emailAddress,
              autofocus: true,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Mail',
                prefixIcon: Icon(Icons.mail),
              ),
            ),
            TextField(),
            TextFormField(),
            Checkbox(
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                }),
          ],
        )),
      ),
    );
  }
}
