// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:together_now_ipd/Introductory/get_started.dart';

class IntroductionScreens extends StatelessWidget {
  const IntroductionScreens({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: IntroductionScreen(
          safeAreaList: const [true, true, true, true],
          globalBackgroundColor: Colors.black,
          pages: [
            PageViewModel(
              title: '',
              body:
                  'Together Now is more than an app; it\'s a celebration of meaningful connections',
              image: buildImage("assets/Picture1.png", width),
              //getPageDecoration, a method to customise the page style
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: '',
              body:
                  'We believe in the power and strength that comes from knowing you\'re not alone.',
              image: buildImage("assets/Picture2.png", width),
              //getPageDecoration, a method to customise the page style
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: '',
              body:
                  'We cherish your moments, the laughter in your stories and the unity of our large family.',
              image: buildImage("assets/Picture3.png", width),
              //getPageDecoration, a method to customise the page style
              decoration: getPageDecoration(),
            ),
          ],
          onDone: () => onDone(context),
          showDoneButton: true,
          showNextButton: true,
          showSkipButton: true,
          skip: const Text("Skip",
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.white)),
          next: const Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
          done: const Text("Done",
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.white)),
          dotsDecorator: getDotsDecorator(),
          curve: Curves.bounceOut,
        ),
      ),
    );
  }

  //widget to add the image on screen
  Widget buildImage(String imagePath, width) {
    // return Center(
    //     child: Image.asset(
    //   imagePath,
    //   width: double.maxFinite,
    //   height: 500,
    // ));
    // return FittedBox(
    //   fit: BoxFit.fill,
    //   child: Image.asset(imagePath),
    // );
    return Container(
      width: width,
      height: 500,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(imagePath),
        ),
      ),
    );
  }

  //method to customise the page style
  PageDecoration getPageDecoration() {
    return const PageDecoration(
      imageFlex: 2,
      // contentMargin: EdgeInsets.zero,
      imagePadding: EdgeInsets.zero,
      pageColor: Colors.black,
      bodyPadding: EdgeInsets.only(top: 5, left: 20, right: 20),
      // titlePadding: EdgeInsets.only(top: 50),
      bodyTextStyle: TextStyle(
          color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
    );
  }

  //method to customize the dots style
  DotsDecorator getDotsDecorator() {
    return const DotsDecorator(
      spacing: EdgeInsets.symmetric(horizontal: 2, vertical: 0),
      activeColor: Colors.white,
      color: Colors.grey,
      activeSize: Size(12, 5),
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
      ),
    );
  }
}

void onDone(context) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => const GetStarted()));
}
