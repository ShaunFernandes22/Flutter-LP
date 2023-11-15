// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Center(
              child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/LogoText.png',
                width: MediaQuery.of(context).size.width * 0.7,
                height: MediaQuery.of(context).size.height * 0.5,
                scale: 1.5,
              ),
              const SizedBox(
                height: 30,
              ),
              const ChoiceButton(
                buttonText: 'People who wish to help',
                horizontalPadding: 14.0,
              ),
              const SizedBox(
                height: 20,
              ),
              const ChoiceButton(
                buttonText: 'People who need help',
              )
            ],
          )),
        ));
  }
}

class ChoiceButton extends StatefulWidget {
  final String buttonText;
  final double horizontalPadding;
  const ChoiceButton(
      {super.key, required this.buttonText, this.horizontalPadding = 20.0});

  @override
  State<ChoiceButton> createState() => _ChoiceButtonState();
}

class _ChoiceButtonState extends State<ChoiceButton> {
  bool isButtonPressed = false;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        setState(() {
          isButtonPressed = !isButtonPressed;
        });
      },
      style: TextButton.styleFrom(
        backgroundColor:
            isButtonPressed ? Palette.borderColor : Colors.transparent,
        padding: EdgeInsets.symmetric(
            horizontal: widget.horizontalPadding, vertical: 15.0),
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Palette.borderColor, width: 2),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      child: Text(
        widget.buttonText,
        style: const TextStyle(color: Colors.white, fontSize: 17),
      ),
    );
  }
}

class Palette {
  static const Color borderColor = Color(0xFF4FC0D0);
}
