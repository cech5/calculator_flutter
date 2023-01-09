import 'package:flutter/material.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              /*
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                color: Colors.indigo,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                height: MediaQuery.of(context).size.height * 0.6,
                color: Colors.black,
                child: GridView.count(
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  crossAxisCount: 4,
                  children: const [
                    CalculatorButton(
                      label: 'AC',
                      colorButton: Color.fromRGBO(166, 166, 166, 1),
                      colorText: Colors.black,
                    ),
                    CalculatorButton(label: '2'),
                    CalculatorButton(label: '3'),
                    CalculatorButton(label: '4'),
                    CalculatorButton(label: '5'),
                    CalculatorButton(label: '6'),
                    CalculatorButton(label: '7'),
                    CalculatorButton(label: '8'),
                    CalculatorButton(label: '9'),
                  ],
                ),
              ),
              */
              const ResultGroup(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton(
                    text: 'AC',
                    bgColor: const Color(0xffA5A5A5),
                    onPressed: () => print('AC'),
                  ),
                  CalculatorButton(
                    text: '+/-',
                    bgColor: const Color(0xffA5A5A5),
                    onPressed: () => print('+/-'),
                  ),
                  CalculatorButton(
                    text: 'del',
                    bgColor: const Color(0xffA5A5A5),
                    onPressed: () => print('del'),
                  ),
                  CalculatorButton(
                    text: '/',
                    bgColor: const Color(0xffF0A23B),
                    onPressed: () => print('/'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton(
                    text: '7',
                    onPressed: () => print('7'),
                  ),
                  CalculatorButton(
                    text: '8',
                    onPressed: () => print('8'),
                  ),
                  CalculatorButton(
                    text: '9',
                    onPressed: () => print('9'),
                  ),
                  CalculatorButton(
                    text: 'X',
                    bgColor: const Color(0xffF0A23B),
                    onPressed: () => print('X'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton(
                    text: '4',
                    onPressed: () => print('4'),
                  ),
                  CalculatorButton(
                    text: '5',
                    onPressed: () => print('5'),
                  ),
                  CalculatorButton(
                    text: '6',
                    onPressed: () => print('6'),
                  ),
                  CalculatorButton(
                    text: '-',
                    bgColor: const Color(0xffF0A23B),
                    onPressed: () => print('-'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton(
                    text: '1',
                    onPressed: () => print('1'),
                  ),
                  CalculatorButton(
                    text: '2',
                    onPressed: () => print('2'),
                  ),
                  CalculatorButton(
                    text: '3',
                    onPressed: () => print('3'),
                  ),
                  CalculatorButton(
                    text: '+',
                    bgColor: const Color(0xffF0A23B),
                    onPressed: () => print('+'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton(
                    text: '0',
                    big: true,
                    onPressed: () => print('0'),
                  ),
                  CalculatorButton(
                    text: '.',
                    onPressed: () => print('.'),
                  ),
                  CalculatorButton(
                    text: '=',
                    bgColor: const Color(0xffF0A23B),
                    onPressed: () => print('='),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ResultGroup extends StatelessWidget {
  const ResultGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SubResultLabel(text: '1000'),
        SubResultLabel(text: 'X'),
        SubResultLabel(text: '1000'),
        LineSeparator(),
        MainResultLabel(text: '2000'),
      ],
    );
  }
}

class SubResultLabel extends StatelessWidget {
  const SubResultLabel({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerRight,
      child: Text(text, style: const TextStyle(fontSize: 30)),
    );
  }
}

class MainResultLabel extends StatelessWidget {
  const MainResultLabel({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      width: double.infinity,
      alignment: Alignment.centerRight,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 50,
        ),
      ),
    );
  }
}

class LineSeparator extends StatelessWidget {
  const LineSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 2,
      color: Colors.white.withOpacity(0.4),
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
    );
  }
}

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    super.key,
    this.bgColor = const Color(0xff333333),
    this.big = false,
    required this.text,
    required this.onPressed,
  });

  final Color bgColor;
  final bool big;
  final String text;

  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    // Button
    final buttonStyle = TextButton.styleFrom(
      backgroundColor: bgColor,
      foregroundColor: Colors.white,
      shape: const StadiumBorder(),
    );

    return Container(
      margin: const EdgeInsets.only(
        bottom: 10,
        right: 5,
        left: 5,
      ),
      child: TextButton(
        style: buttonStyle,
        child: SizedBox(
          width: big ? 150 : 65,
          height: 65,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
        onPressed: () => onPressed(),
      ),
    );
  }
}

/*
class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    super.key,
    required this.label,
    this.colorButton,
    this.colorText,
  });

  final String label;
  final Color? colorButton;
  final Color? colorText;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      foregroundColor: colorText,
      backgroundColor: colorButton,
      onPressed: () => null,
      child: Text(
        label,
        style: Theme.of(context).textTheme.headline3,
      ),
    );
  }
}
*/