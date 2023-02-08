import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'calculator_state.dart';

class CalculatorCubit extends Cubit<CalculatorState> {
  CalculatorCubit() : super(const CalculatorState());

  void addDigitToFirstNumber(String digit) {
    emit(state.copyWith(firstNumber: '${state.firstNumber}$digit'));
  }

  void addOperator(String operator) {
    emit(state.copyWith(operation: operator));
  }

  void addDigitToSeconNumber(String digit) {
    emit(state.copyWith(secondNumber: '${state.secondNumber}$digit'));
  }

  void addResult() {
    final firstNumberInt = int.parse(state.firstNumber);
    final secondNumberInt = int.parse(state.secondNumber);
    final result;
    switch (state.operation) {
      case '+':
        result = firstNumberInt + secondNumberInt;
        emit(state.copyWith(mathResult: result.toString()));
        break;
      default:
    }
  }
}
