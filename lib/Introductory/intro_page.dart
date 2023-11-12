// import 'package:flutter/material.dart';

// class IntroPage extends StatelessWidget {
//   final List<Color> gradientListColors;
//   final String imagePath;
//   final String text;

//   const IntroPage({
//     super.key,
//     required this.gradientListColors,
//     required this.imagePath,
//     required this.text,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Stack(
//         children: <Widget>[
//           Background(),
//           BezierCurve(
//             listColors: gradientListColors,
//           ),
//           CurveImage(
//             imagePath: imagePath,
//             listColors: gradientListColors,
//           ),
//           TextSection(
//             text: text,
//           ),
//         ],
//       ),
//     );
//   }
// }

// class Background extends StatelessWidget {
//   const Background({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.black,
//       height: MediaQuery.of(context).size.height,
//       width: MediaQuery.of(context).size.width,
//     );
//   }
// }

// class BezierCurve extends StatelessWidget {
//   final List<Color> listColors;

//   const BezierCurve({
//     super.key,
//     required this.listColors,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Positioned(
//       child: ClipPath(
//         clipper: BezierClipper1(),
//         child: Container(
//           height: MediaQuery.of(context).size.height * 0.5,
//           width: double.infinity,
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: listColors,
//               begin: Alignment.bottomCenter,
//               end: Alignment.topCenter,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class BezierClipper1 extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var height = size.height;
//     var width = size.width;
//     var heightOffset = height * 0.4;
//     final Path path = Path();

//     path.lineTo(
//       0,
//       height - heightOffset,
//     );
//     path.quadraticBezierTo(
//       width * 0.5,
//       height,
//       width,
//       height - heightOffset,
//     );
//     path.lineTo(
//       width,
//       0,
//     );
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => true;
// }

// class CurveImage extends StatelessWidget {
//   final String imagePath;
//   final List<Color> listColors;

//   const CurveImage({
//     super.key,
//     required this.imagePath,
//     required this.listColors,
//   });
//   @override
//   Widget build(BuildContext context) {
//     return Positioned(
//       top: MediaQuery.of(context).size.height * 0.4 - 180,
//       left: MediaQuery.of(context).size.width * 0.5 - 75,
//       child: Container(
//         width: 150,
//         height: 150,
//         decoration: BoxDecoration(
//           shape: BoxShape.circle,
//           gradient: LinearGradient(
//             colors: listColors,
//             begin: Alignment.bottomCenter,
//             end: Alignment.topCenter,
//           ),
//         ),
//         child: Center(
//           child: Image.asset(
//             imagePath,
//             width: 120,
//             height: 120,
//             fit: BoxFit.cover,
//           ),
//         ),
//       ),
//     );
//   }
// }

// // text_section.dart

// class TextSection extends StatelessWidget {
//   final String text;

//   const TextSection({
//     super.key,
//     required this.text,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Positioned(
//       bottom: MediaQuery.of(context).size.height / 2 - 40,
//       width: MediaQuery.of(context).size.width - 18,
//       child: Center(
//         child: Text(
//           text,
//           textAlign: TextAlign.center,
//           style: const TextStyle(
//             fontWeight: FontWeight.w700,
//             fontSize: 25.0,
//             color: Colors.white,
//           ),
//         ),
//       ),
//     );
//   }
// }
