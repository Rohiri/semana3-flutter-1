import 'package:flutter/material.dart';
import 'package:semana3noticias/Pages/home.page.dart';

void main() {
  runApp(MiAplicacion());
}

class MiAplicacion extends StatelessWidget {
  const MiAplicacion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Notices APP",
      theme: ThemeData.light(),
      home: HomePage(),
    );
  }
}