import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class IntroductoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              ClipPath(
                clipper: BezierClipper1(),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: double.infinity,
                  decoration: BoxDecoration(
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
              Positioned(
                top: MediaQuery.of(context).size.height * 0.2 -
                    70, // Adjust as needed
                left: MediaQuery.of(context).size.width / 2 -
                    70, // Adjust as needed
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(
                      'assets/help_heart.png'), // Replace with your circular image asset
                ),
              ),
            ],
          ),
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
        child: Center(
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
