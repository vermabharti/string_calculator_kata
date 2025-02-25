import 'package:flutter_test/flutter_test.dart';
import 'package:string_calculator_kata/string_calculator.dart';

void main() {
  final calculator = StringCalculator();

  test('Empty string should return 0', () {
    expect(calculator.add(""), 0);
  });

  test('Single number should return the number itself', () {
    expect(calculator.add("1"), 1);
  });

  test('Two numbers should return their sum', () {
    expect(calculator.add("1,5"), 6);
  });

  test('Multiple numbers should return their sum', () {
    expect(calculator.add("1,2,3,4"), 10);
  });

  test('Newline as delimiter should be handled', () {
    expect(calculator.add("1\n2,3"), 6);
  });

  test('Custom delimiter should be handled', () {
    expect(calculator.add("//;\n1;2"), 3);
  });

  test('Negative numbers should throw exception', () {
    expect(
      () => calculator.add("1,-2,3,-4"),
      throwsA(
        predicate(
          (e) =>
              e is Exception &&
              e.toString() == 'Exception: negative numbers not allowed -2,-4',
        ),
      ),
    );
  });
}
