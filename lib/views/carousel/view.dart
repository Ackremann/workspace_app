import 'package:flutter/material.dart';
import 'package:workspace_app/widget/carousel_page_view.dart';

class CarouselView extends StatelessWidget {
  const CarouselView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselPageView(),
    );
  }
}
