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
                height: 10,
              ),
              Image.asset(
                'assets/LogoText.png',
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.6,
                scale: 1.5,
              ),
              const ChoiceButton(
                buttonText: 'People who want to help',
                horizontalPadding: 11.0,
              ),
              const SizedBox(
                height: 20,
              ),
              const ChoiceButton(
                buttonText: 'People who need help',
              ),
              const SizedBox(
                height: 60,
              ),
              const StartedButton(),
            ],
          )),
        ));
  }
}

class ChoiceButton extends StatefulWidget {
  final String buttonText;
  final double horizontalPadding;
  const ChoiceButton(
      {super.key, required this.buttonText, this.horizontalPadding = 22.0});

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
            horizontal: widget.horizontalPadding, vertical: 17.0),
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Palette.borderColor, width: 2),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      child: Text(
        widget.buttonText,
        style: const TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}

class StartedButton extends StatelessWidget {
  const StartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          fixedSize: const Size(300, 55),
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
              side: const BorderSide(color: Palette.startBorderColor, width: 2),
              borderRadius: BorderRadius.circular(10))),
      child: const Text(
        'Get Started',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 22,
        ),
      ),
    );
  }
}

class Palette {
  static const Color borderColor = Color(0xFF4FC0D0);
  static const Color startBorderColor = Color(0xFFA2FF86);
}
