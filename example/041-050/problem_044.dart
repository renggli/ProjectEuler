/// Problem 44: Pentagon numbers
///
/// Pentagonal numbers are generated by the formula
///
///   P_n = n * (3 * n - 1) ~/ 2.
///
/// The first 10 pentagonal numbers are:
///
///   1, 5, 12, 22, 35, 51, 70, 92, 117, 145, ...
///
/// It can be seen that P_4 + P_7 = 22 + 70 = 92 = P_8. However, their
/// difference, 70 - 22 = 48, is not pentagonal.
///
/// Find the pair of pentagonal numbers, P_j and P_k, for which their sum and
/// difference are pentagonal and D = | Pk - Pj | is minimised; what is the
/// value of D?
library problem_044;

import 'package:more/collection.dart';

final max = 10000;

final pentagonalNumbers = range(1, max)
    .map((n) => n * (3 * n - 1) ~/ 2)
    .toList();
final pentagonalNumbersSet = pentagonalNumbers.toSet();

void main() {
  for (var i = 1; i < pentagonalNumbers.length; i++) {
    for (var x = i, y = 0; x > y; x--, y++) {
      var a = pentagonalNumbers[x], b = pentagonalNumbers[y];
      if (pentagonalNumbersSet.contains(a + b) &&
          pentagonalNumbersSet.contains(a - b)) {
        assert(a - b == 5482660);
        return;
      }
    }
  }
  assert(false);
}
