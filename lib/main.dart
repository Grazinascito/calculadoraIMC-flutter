import 'package:flutter/material.dart';

import 'form_datas.dart';

main() {
  runApp(const ImcApp());
}

class ImcApp extends StatelessWidget {
  const ImcApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // adicionar botão de reset no app bar
          backgroundColor: Colors.purple,
          title: const Text(
            "Calculadora IMC",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: const FormData(),
      ),
    );
  }
}
