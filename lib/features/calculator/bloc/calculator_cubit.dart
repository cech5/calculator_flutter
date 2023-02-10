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
      if (state.mathResult.isNotEmpty) {
        emit(
          state.copyWith(
            firstNumber: state.mathResult,
            operation: operator,
            secondNumber: '',
            mathResult: '',
          ),
        );
      } else {
        emit(state.copyWith(operation: operator));
      }
    }
  }

  void addSign() {
    if (state.operation.isEmpty) {
      if (state.firstNumber.isNotEmpty) {
        if (!state.firstNumber.startsWith('-')) {
          emit(state.copyWith(firstNumber: '-${state.firstNumber}'));
        } else {
          emit(state.copyWith(firstNumber: state.firstNumber.substring(1)));
        }
      }
    } else {
      if (state.secondNumber.isNotEmpty) {
        if (!state.secondNumber.startsWith('-')) {
          emit(state.copyWith(secondNumber: '-${state.secondNumber}'));
        } else {
          emit(state.copyWith(secondNumber: state.secondNumber.substring(1)));
        }
      }
    }
  }

  void addResult() {
    if (state.operation.isNotEmpty && state.secondNumber.isNotEmpty) {
      final firstNumberDouble = double.parse(state.firstNumber);
      final secondNumberDouble = double.parse(state.secondNumber);
      final double result;
      switch (state.operation) {
        case '+':
          result = firstNumberDouble + secondNumberDouble;
          // Verify if result after point contains 0
          if (result == result.truncateToDouble()) {
            emit(state.copyWith(mathResult: result.toStringAsFixed(0)));
          } else {
            emit(state.copyWith(mathResult: result.toString()));
          }
          break;
        case 'X':
          result = firstNumberDouble * secondNumberDouble;
          // Verify if result after point contains 0
          if (result == result.truncateToDouble()) {
            emit(state.copyWith(mathResult: result.toStringAsFixed(0)));
          } else {
            emit(state.copyWith(mathResult: result.toString()));
          }
          break;
        case '-':
          result = firstNumberDouble - secondNumberDouble;
          // Verify if result after point contains 0
          if (result == result.truncateToDouble()) {
            emit(state.copyWith(mathResult: result.toStringAsFixed(0)));
          } else {
            emit(state.copyWith(mathResult: result.toString()));
          }
          break;
        case '÷':
          result = firstNumberDouble / secondNumberDouble;
          // Verify if result after point contains 0
          if (result == result.truncateToDouble()) {
            emit(state.copyWith(mathResult: result.toStringAsFixed(0)));
          } else {
            emit(state.copyWith(mathResult: result.toString()));
          }
          break;
        case '%':
          break;
        default:
      }
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
