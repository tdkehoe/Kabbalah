import 'package:test/test.dart';
import 'package:kabbalah/convert_name_to_number.dart';

void main() {
  group('Leslie Margaret Perrin McPherson', () {
    // this tests both the convertNameToNumber() and reduceNumber() functions
    test('Leslie should be a 20', () {
      var result = convertNameToNumber('Leslie');
      expect(result, 2);
    });

    test('Margaret should be a 22', () {
      var result = convertNameToNumber('Margaret');
      expect(result, 22);
    });

    test('Perrin should be a 5', () {
      var result = convertNameToNumber('Perrin');
      expect(result, 5);
    });

    test('McPherson should be a 6', () {
      var result = convertNameToNumber('McPherson');
      expect(result, 6);
    });

    test("Don't reduce compound number under 74", () {
      var result = reduceCompoundNumber(35);
      expect(result, 35);
    });

    test("Reduce compound numbers 74 and over", () {
      var result = reduceCompoundNumber(74);
      expect(result, 11);
    });

    test("Don't reduce singles number under 10", () {
      var result = reduceCompoundNumber(8);
      expect(result, 8);
    });

    test("Reduce singles numbers 74 and over", () {
      var result = reduceSingleNumber(15);
      expect(result, 6);
    });
  });
}
