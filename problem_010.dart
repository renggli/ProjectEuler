/**
 * Problem 10: Summation of primes
 *
 * The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
 *
 * Find the sum of all the primes below two million.
 */
library problem_010;

import 'problem_003.dart' as problem_003;

var max = 2000000;

void main() {
  print(problem_003.primesUpTo(max).reduce((a, b) => a + b)); // 142913828922
}
