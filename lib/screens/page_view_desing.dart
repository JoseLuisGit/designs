import 'package:flutter/material.dart';

class PageViewDesignScreen extends StatelessWidget {
  const PageViewDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _pageViewController = PageController();

    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [
                0.5, 0.5
              ],
              colors: [
                Color.fromRGBO(117,234,205, 1),
                Color.fromRGBO(80, 194, 221, 1)
              ]
              )
          ),
          child: PageView(
          physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      controller: _pageViewController,
      children: [
          _PageViewImage(pageController: _pageViewController),
          const _PageViewContain()
      ],
    ),
        ));
  }
}

class _PageViewImage extends StatelessWidget {
  final PageController pageController;
  const _PageViewImage({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        color: Colors.white, fontSize: 45, fontWeight: FontWeight.w700);
    return Stack(
      children: [
        const _BackgroundImage(),
        Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 70,
                ),
                const Text(
                  '25°',
                  style: textStyle,
                ),
                const Text('Martes', style: textStyle),
                const SizedBox(
                  height: 490,
                ),
                Expanded(
                    child: GestureDetector(
                        onTap: () {
                          pageController.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: const RotatedBox(
                          quarterTurns: 1,
                          child: Icon(Icons.arrow_forward_ios_sharp,
                              color: Colors.white, size: 120),
                        )))
              ]),
        )
      ],
    );
  }
}

class _BackgroundImage extends StatelessWidget {
  const _BackgroundImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(80, 194, 221, 1),
      height: double.infinity,
      width: double.infinity,
      child: const Image(
        image: AssetImage('assets/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }
}

class _PageViewContain extends StatelessWidget {
  const _PageViewContain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(80, 194, 221, 1),
      child: Center(
          child: InkWell(
        splashColor: Colors.amber,
        onTap: () {
          print('Bienvenido');
        },
        child: Container(
          height: 50,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(15),
  
              ),
          child: const Center(
              child: Text(
            'Bienvenido',
            style: TextStyle(color: Colors.white, fontSize: 20),
          )),
        ),
      )),
    );
  }
}
