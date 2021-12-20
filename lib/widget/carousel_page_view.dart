import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:workspace_app/views/home/view.dart';
import 'package:workspace_app/views/login/view.dart';

class CarouselPageView extends StatefulWidget {
  const CarouselPageView({Key? key}) : super(key: key);

  @override
  State<CarouselPageView> createState() => _CarouselPageViewState();
}

class _CarouselPageViewState extends State<CarouselPageView> {
  List<Widget> cards = [
    Image.network(
      "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/illustrations%2Fundraw_Accept_terms_re_lj38%201.png?alt=media&token=476b97fd-ba66-4f62-94a7-bce4be794f36",
      fit: BoxFit.cover,
    ),
    Image.network(
      "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/illustrations%2Fundraw_Designer_re_5v95%201.png?alt=media&token=5d053bd8-d0ea-4635-abb6-52d87539b7ec",
      fit: BoxFit.cover,
    ),
    Image.network(
      "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/illustrations%2Fundraw_File_bundle_re_6q1e%201.png?alt=media&token=297b0f81-a805-4a93-858c-32783fcacb50",
      fit: BoxFit.cover,
    ),
  ];
  late PageController _pageController;
  int _position = 0;
  late int _page_position;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0, viewportFraction: 1);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          flex: 8,
          child: PageView.builder(
            onPageChanged: (int position) {
              setState(() {
                _position = position;
              });
            },
            itemCount: cards.length,
            controller: _pageController,
            itemBuilder: (context, poition) {
              return imageSlider(poition);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 1,
                child: AnimatedPageIndicatorFb1(
                  currentPage: _position,
                  numPages: cards.length,
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue.withOpacity(.4),
                      Colors.purple.withOpacity(.4)
                    ],
                  ),
                  activeGradient: LinearGradient(
                    colors: [Colors.blue, Colors.purple],
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  _pageController.nextPage(
                    duration: Duration(
                      seconds: 1,
                    ),
                    curve: Curves.ease,
                  );
                  if (_position == 2) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginView(),
                      ),
                    );
                  }
                },
                child: _position == 2 ? Text('LetsGo') : Text('Skip'),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget imageSlider(int position) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        return Center(
          child: child,
        );
      },
      child: Container(
        child: cards[position],
      ),
    );
  }
}

class AnimatedPageIndicatorFb1 extends StatelessWidget {
  const AnimatedPageIndicatorFb1(
      {Key? key,
      required this.currentPage,
      required this.numPages,
      this.dotHeight = 10,
      this.activeDotHeight = 10,
      this.dotWidth = 10,
      this.activeDotWidth = 20,
      this.gradient =
          const LinearGradient(colors: [Color(0xff4338CA), Color(0xff6D28D9)]),
      this.activeGradient =
          const LinearGradient(colors: [Color(0xff4338CA), Color(0xff6D28D9)])})
      : super(key: key);

  final int
      currentPage; //the index of the active dot, i.e. the index of the page you're on
  final int
      numPages; //the total number of dots, i.e. the number of pages your displaying

  final double dotWidth; //the width of all non-active dots
  final double activeDotWidth; //the width of the active dot
  final double activeDotHeight; //the height of the active dot
  final double dotHeight; //the height of all dots
  final Gradient gradient; //the gradient of all non-active dots
  final Gradient activeGradient; //the gradient of the active dot

  double _calcRowSize() {
    //Calculates the size of the outer row that creates spacing that is equivalent to the width of a dot
    final int widthFactor = 2; //assuming spacing is equal to the width of a dot
    return (dotWidth * numPages * widthFactor) + activeDotWidth - dotWidth;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _calcRowSize(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          numPages,
          (index) => AnimatedPageIndicatorDot(
            isActive: currentPage == index,
            gradient: gradient,
            activeGradient: activeGradient,
            activeWidth: activeDotWidth,
            activeHeight: activeDotHeight,
          ),
        ),
      ),
    );
  }
}

class AnimatedPageIndicatorDot extends StatelessWidget {
  const AnimatedPageIndicatorDot(
      {Key? key,
      required this.isActive,
      this.height = 10,
      this.width = 10,
      this.activeWidth = 20,
      this.activeHeight = 10,
      required this.gradient,
      required this.activeGradient})
      : super(key: key);

  final bool isActive;
  final double height;
  final double width;
  final double activeWidth;
  final double activeHeight;
  final Gradient gradient;
  final Gradient activeGradient;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: isActive ? activeWidth : width,
      height: isActive ? activeHeight : height,
      duration: Duration(milliseconds: 300),
      decoration: BoxDecoration(
          gradient: isActive ? activeGradient : gradient,
          borderRadius: BorderRadius.all(Radius.circular(30))),
    );
  }
}
