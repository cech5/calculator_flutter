import 'package:auto_size_text/auto_size_text.dart';
import 'package:calculator_flutter/features/calculator/bloc/calculator_cubit.dart';
import 'package:calculator_flutter/features/theme/cubit/app_theme_cubit.dart';
import 'package:calculator_flutter/features/theme/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    //print(MediaQuery.of(context).size.width);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30,
        actions: [
          Switch(
            value: context.select((AppThemeCubit cubit) => cubit.state) ==
                    AppTheme.darkTheme ||
                false,
            onChanged: (value) {
              context.read<AppThemeCubit>().toogleTheme();
            },
            activeThumbImage: const AssetImage('assets/images/dark-mode.png'),
            inactiveThumbImage:
                const AssetImage('assets/images/light-mode.png'),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const ResultGroup(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton(
                    text: context
                            .select(
                              (CalculatorCubit cubit) =>
                                  cubit.state.firstNumber,
                            )
                            .isNotEmpty
                        ? 'C'
                        : 'AC',
                    bgColor: context.read<AppThemeCubit>().state ==
                            AppTheme.darkTheme
                        ? const Color(0xffA5A5A5)
                        : const Color.fromRGBO(128, 128, 128, 1),
                    fgColor: context.read<AppThemeCubit>().state ==
                            AppTheme.darkTheme
                        ? Colors.black
                        : Colors.white,
                    onPressed: () =>
                        context.read<CalculatorCubit>().cleanResultGroup(),
                  ),
                  CalculatorButton(
                    text: '+/-',
                    bgColor: context.read<AppThemeCubit>().state ==
                            AppTheme.darkTheme
                        ? const Color(0xffA5A5A5)
                        : const Color.fromRGBO(128, 128, 128, 1),
                    fgColor: context.read<AppThemeCubit>().state ==
                            AppTheme.darkTheme
                        ? Colors.black
                        : Colors.white,
                    onPressed: () => context.read<CalculatorCubit>().addSign(),
                  ),
                  CalculatorButton(
                    text: '%',
                    bgColor: context.read<AppThemeCubit>().state ==
                            AppTheme.darkTheme
                        ? const Color(0xffA5A5A5)
                        : const Color.fromRGBO(128, 128, 128, 1),
                    fgColor: context.read<AppThemeCubit>().state ==
                            AppTheme.darkTheme
                        ? Colors.black
                        : Colors.white,
                    onPressed: () =>
                        context.read<CalculatorCubit>().addOperator('%'),
                  ),
                  CalculatorButton(
                    text: '÷',
                    bgColor: const Color(0xffF0A23B),
                    fgColor: context.read<AppThemeCubit>().state ==
                            AppTheme.darkTheme
                        ? Colors.white
                        : Colors.black,
                    onPressed: () =>
                        context.read<CalculatorCubit>().addOperator('÷'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton(
                    text: '7',
                    onPressed: () =>
                        context.read<CalculatorCubit>().addDigit('7'),
                  ),
                  CalculatorButton(
                    text: '8',
                    onPressed: () =>
                        context.read<CalculatorCubit>().addDigit('8'),
                  ),
                  CalculatorButton(
                    text: '9',
                    onPressed: () =>
                        context.read<CalculatorCubit>().addDigit('9'),
                  ),
                  CalculatorButton(
                    text: 'x',
                    bgColor: const Color(0xffF0A23B),
                    fgColor: context.read<AppThemeCubit>().state ==
                            AppTheme.darkTheme
                        ? Colors.white
                        : Colors.black,
                    onPressed: () =>
                        context.read<CalculatorCubit>().addOperator('x'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton(
                    text: '4',
                    onPressed: () =>
                        context.read<CalculatorCubit>().addDigit('4'),
                  ),
                  CalculatorButton(
                    text: '5',
                    onPressed: () =>
                        context.read<CalculatorCubit>().addDigit('5'),
                  ),
                  CalculatorButton(
                    text: '6',
                    onPressed: () =>
                        context.read<CalculatorCubit>().addDigit('6'),
                  ),
                  CalculatorButton(
                    text: '-',
                    bgColor: const Color(0xffF0A23B),
                    fgColor: context.read<AppThemeCubit>().state ==
                            AppTheme.darkTheme
                        ? Colors.white
                        : Colors.black,
                    onPressed: () =>
                        context.read<CalculatorCubit>().addOperator('-'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton(
                    text: '1',
                    onPressed: () =>
                        context.read<CalculatorCubit>().addDigit('1'),
                  ),
                  CalculatorButton(
                    text: '2',
                    onPressed: () =>
                        context.read<CalculatorCubit>().addDigit('2'),
                  ),
                  CalculatorButton(
                    text: '3',
                    onPressed: () =>
                        context.read<CalculatorCubit>().addDigit('3'),
                  ),
                  CalculatorButton(
                    text: '+',
                    bgColor: const Color(0xffF0A23B),
                    fgColor: context.read<AppThemeCubit>().state ==
                            AppTheme.darkTheme
                        ? Colors.white
                        : Colors.black,
                    onPressed: () =>
                        context.read<CalculatorCubit>().addOperator('+'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton(
                    text: '0',
                    big: true,
                    onPressed: () =>
                        context.read<CalculatorCubit>().addDigit('0'),
                  ),
                  CalculatorButton(
                    text: '.',
                    onPressed: () =>
                        context.read<CalculatorCubit>().addDigit('.'),
                  ),
                  CalculatorButton(
                    text: '=',
                    bgColor: const Color(0xffF0A23B),
                    fgColor: context.read<AppThemeCubit>().state ==
                            AppTheme.darkTheme
                        ? Colors.white
                        : Colors.black,
                    onPressed: () =>
                        context.read<CalculatorCubit>().addResult(),
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
      children: [
        SubResultLabel(
          text: context
              .select((CalculatorCubit cubit) => cubit.state.firstNumber),
        ),
        if (context.select((CalculatorCubit cubit) => cubit.state.operation) !=
            '')
          SubResultLabel(
            text: context
                .select((CalculatorCubit cubit) => cubit.state.operation),
          ),
        if (context
                .select((CalculatorCubit cubit) => cubit.state.secondNumber) !=
            '')
          SubResultLabel(
            text: context
                .select((CalculatorCubit cubit) => cubit.state.secondNumber),
          ),
        const Divider(),
        MainResultLabel(
          text:
              context.select((CalculatorCubit cubit) => cubit.state.mathResult),
        ),
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
      child: AutoSizeText(
        text,
        style: const TextStyle(
          fontSize: 50,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
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
    this.bgColor,
    this.big = false,
    this.fgColor,
    required this.text,
    required this.onPressed,
  });

  final Color? bgColor;
  final bool big;
  final String text;
  final Color? fgColor;

  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    // Button
    return Container(
      margin: const EdgeInsets.only(
        bottom: 10,
        right: 5,
        left: 5,
      ),
      //width: big ? 150 : 65,
      child: InkWell(
        borderRadius: BorderRadius.circular(40),
        onTap: () => onPressed(),
        child: Container(
          decoration: BoxDecoration(
            //shape: BoxShape.circle,
            borderRadius: BorderRadius.circular(40),
            color: bgColor ?? Theme.of(context).primaryColor,
          ),
          width: big ? 170 : 80,
          height: 80,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: fgColor,
                fontSize: 30,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
