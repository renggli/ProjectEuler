/// Problem 2: Even Fibonacci numbers
///
/// Each new term in the Fibonacci sequence is generated by adding the previous
/// two terms. By starting with 1 and 2, the first 10 terms will be:
///
/// 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
///
/// By considering the terms in the Fibonacci sequence whose values do not
/// exceed four million, find the sum of the even-valued terms.
Iterable<int> fibonacci(int n0, int n1) sync* {
  yield n0;
  yield n1;
  for (;;) {
    final n2 = n0 + n1;
    yield n2;
    n0 = n1;
    n1 = n2;
  }
}

const int max = 4000000;

void main() {
  final sum = fibonacci(1, 2)
      .takeWhile((v) => v < max)
      .where((v) => v.isEven)
      .reduce((a, b) => a + b);
  assert(sum == 4613732);
}