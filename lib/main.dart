import 'package:flutter/material.dart';
import 'package:workspace_app/views/carousel/view.dart';
import 'package:workspace_app/views/login/view.dart';
import 'package:workspace_app/views/register_bin_code/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CarouselView(),
    );
  }
}
