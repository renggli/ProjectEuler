/// Problem 24: Lexicographic permutations
///
/// A permutation is an ordered arrangement of objects. For example, 3124 is one
/// possible permutation of the digits 1, 2, 3 and 4. If all of the permutations
/// are listed numerically or alphabetically, we call it lexicographic order.
/// The lexicographic permutations of 0, 1 and 2 are:
///
///   012   021   102   120   201   210
///
/// What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4,
/// 5, 6, 7, 8 and 9?
library euler.problem_024;

import 'package:more/iterable.dart';

const List<int> list = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
const int index = 1000000;

void main() {
  final permutation = permutations(list).elementAt(index - 1).join();
  assert(permutation == '2783915460');
}
