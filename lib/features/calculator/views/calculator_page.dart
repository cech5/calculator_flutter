import 'package:calculator_flutter/features/calculator/bloc/calculator_cubit.dart';
import 'package:calculator_flutter/features/calculator/views/carculator_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key});

  Route<void> route() => MaterialPageRoute(
        builder: (context) => const CalculatorPage(),
      );

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CalculatorCubit(),
      child: const CalculatorView(),
    );
  }
}
