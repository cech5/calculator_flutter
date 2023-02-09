import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'calculator_state.dart';

class CalculatorCubit extends Cubit<CalculatorState> {
  CalculatorCubit() : super(const CalculatorState());

  void addDigit(String digit) {
    if (state.mathResult.isEmpty) {
      if (state.operation.isEmpty) {
        if (digit == '.' && state.firstNumber.isEmpty) {
        } else {
          emit(state.copyWith(firstNumber: '${state.firstNumber}$digit'));
        }
      } else {
        emit(state.copyWith(secondNumber: '${state.secondNumber}$digit'));
      }
    } else {
      emit(
        state.copyWith(
          firstNumber: '',
          secondNumber: '',
          operation: '',
          mathResult: '',
        ),
      );
      if (state.operation.isEmpty) {
        if (digit == '.' && state.firstNumber.isEmpty) {
        } else {
          emit(state.copyWith(firstNumber: '${state.firstNumber}$digit'));
        }
      } else {
        emit(state.copyWith(secondNumber: '${state.secondNumber}$digit'));
      }
    }
  }

  void addOperator(String operator) {
    if (operator == '%') {
      if (state.firstNumber.isNotEmpty) {
        final result = double.parse(state.firstNumber) / 100;
        if (result == result.truncateToDouble()) {
          emit(state.copyWith(mathResult: result.toStringAsFixed(0)));
        } else {
          emit(state.copyWith(mathResult: result.toString()));
        }
      }
    } else {
      emit(state.copyWith(operation: operator));
    }
  }

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

  void cleanResultGroup() {
    emit(
      state.copyWith(
        firstNumber: '',
        secondNumber: '',
        mathResult: '',
        operation: '',
      ),
    );
  }
}
