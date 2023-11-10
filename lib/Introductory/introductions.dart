import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class IntroductoryPage extends StatelessWidget {
  const IntroductoryPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.black,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Positioned(
            child: ClipPath(
              clipper: BezierClipper1(),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF07E9F8),
                      Color(0xFF0269C8),
                      Color(0xFF021F3A),
                      Color(0xFF000000),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.4 - 180,
            left: MediaQuery.of(context).size.width * 0.5 - 75,
            child: Container(
              width: 150,
              height: 150,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF07E9F8),
                    Color(0xFF0269C8),
                    Color(0xFF021F3A),
                    Color(0xFF000000),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: Center(
                child: Image.asset(
                  'assets/help_heart.png',
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 2 - 40,
            width: MediaQuery.of(context).size.width - 18,
            child: const Center(
              child: Text(
                "Together Now is more than an app; it\'s a celebration of meaningful connections",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BezierClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var height = size.height;
    var width = size.width;
    var heightOffset = height * 0.4;
    final Path path = Path();

    path.lineTo(
      0,
      height - heightOffset,
    );
    path.quadraticBezierTo(
      width * 0.5,
      height,
      width,
      height - heightOffset,
    );
    path.lineTo(
      width,
      0,
    );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class ScreenBuilder {
  static Widget buildIntroductoryPage() {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        height: 300,
        child: const Center(
          child: CircleAvatar(
            backgroundColor: Colors.black,
            backgroundImage: AssetImage('assets/TogetherNowLogo.png'),
            radius: 50,
          ),
        ),
      ),
    );
  }
}
