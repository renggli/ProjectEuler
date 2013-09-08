/**
 * Problem 61: Cyclical figurate numbers
 *
 * Triangle, square, pentagonal, hexagonal, heptagonal, and octagonal numbers are all figurate
 * (polygonal) numbers and are generated by the following formulae:
 *
 * Triangle    P_3,n = n(n+1)/2   1, 3, 6, 10, 15, ...
 * Square      P_4,n = n^2        1, 4, 9, 16, 25, ...
 * Pentagonal  P_5,n = n(3n−1)/2  1, 5, 12, 22, 35, ...
 * Hexagonal   P_6,n = n(2n−1)    1, 6, 15, 28, 45, ...
 * Heptagonal  P_7,n = n(5n−3)/2  1, 7, 18, 34, 55, ...
 * Octagonal   P_8,n = n(3n−2)    1, 8, 21, 40, 65, ...
 *
 * The ordered set of three 4-digit numbers: 8128, 2882, 8281, has three interesting properties.
 *
 * 1. The set is cyclic, in that the last two digits of each number is the first two digits of the
 *    next number (including the last number with the first).
 *
 * 2. Each polygonal type: triangle (P_3,127 = 8128), square (P_4,91 = 8281), and pentagonal
 *    (P_5,44 = 2882), is represented by a different number in the set.
 *
 * 3. This is the only set of 4-digit numbers with this property.
 *
 * Find the sum of the only ordered set of six cyclic 4-digit numbers for which each polygonal
 * type: triangle, square, pentagonal, hexagonal, heptagonal, and octagonal, is represented by a
 * different number in the set.
 */
library problem_061;

import 'dart:math';
import 'package:more/bit_set.dart';
import 'package:more/ordering.dart';
import 'package:more/int_math.dart';
import 'package:more/iterable.dart';
import 'package:more/range.dart';

void main() {
  assert(false);
}