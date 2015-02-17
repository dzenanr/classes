library classes_test;

import 'package:classes/classes.dart';
import 'package:unittest/unittest.dart';

void main() => defineTests();

void defineTests() {
  group('main tests', () {
    test('property value', () {
      var link = new Link('dzenanr', 'https://github.com/dzenanr');
      expect(link.name, equals('dzenanr'));
      expect(link.url, equals('https://github.com/dzenanr'));
    });
  });
}
