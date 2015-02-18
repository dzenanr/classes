library classes_test;

import 'package:classes/classes.dart';
import 'package:unittest/unittest.dart';

void main() => defineTests();

void defineTests() {
  group('main tests', () {
    test('property value', () {
      var link = new Link('dzenanr', 'https://github.com/dzenanr');
      expect(link.name, equals('dzenanr'));
      expect(link.url, equals(Uri.parse('https://github.com/dzenanr')));
    });
    test('Uri value', () {
      var link = new Link('dzenanr', 'dr 15');
      expect(link.url, equals(Uri.parse('dr 15')));
      //expect(link.url.toString(), equals('dr 15'));
      expect(link.url.toString(), equals('dr%2015'));
    });
  });
}
