/**
 * Problem 2: Even Fibonacci numbers
 *
 * Each new term in the Fibonacci sequence is generated by adding the previous
 * two terms. By starting with 1 and 2, the first 10 terms will be:
 *
 * 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
 *
 * By considering the terms in the Fibonacci sequence whose values do not exceed
 * four million, find the sum of the even-valued terms.
 */
library problem_002;

import 'package:more/iterable.dart';

final max = 4000000;

void main() {
  var sum = fibonacci(1, 2)
      .takeWhile((v) => v < max)
      .where((v) => v.isEven)
      .reduce((a, b) => a + b);
  assert(sum == 4613732);
}
