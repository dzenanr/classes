// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library classes_test;

import 'package:classes/classes.dart' as classes;
import 'package:unittest/unittest.dart';

void main() => defineTests();

void defineTests() {
  group('main tests', () {
    test('property value', () {
      var link = new classes.Link('dzenanr', 'https://github.com/dzenanr');
      expect(link.name, equals('dzenanr'));
    });
  });
}
