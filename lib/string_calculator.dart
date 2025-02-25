class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;
    final numberList = numbers.split(',').map(int.parse).toList();
    return numberList.reduce((a, b) => a + b);
  }
}
