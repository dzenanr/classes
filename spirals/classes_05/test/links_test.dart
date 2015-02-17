// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library links_test;

import 'package:classes/classes.dart';
import 'package:unittest/unittest.dart';
import 'dart:convert';

var links = new Links();

testLinks() {
  group('basic tests', () {
    setUp(() {
      var count = 0;
      links.init();
      expect(links.length, equals(3));
      //links.display('Links');
    });
    tearDown(() {
      links.clear();
      expect(links.isEmpty, isTrue);
    });
    test('property value', () {
      var link = new Link('dzenanr', 'https://github.com/dzenanr');
      expect(link.name, equals('dzenanr'));
      expect(link.url, equals(Uri.parse('https://github.com/dzenanr')));
    });
    test('Uri value', () {
      var link = new Link('dzenanr', 'dr 15');
      expect(link.url, equals(Uri.parse('dr 15')));
      expect(link.url.toString(), equals('dr%2015'));
    });
    test('add link', () {
      var link = new Link('dzenanr', 'https://github.com/dzenanr');
      var added = links.add(link);
      expect(added, isTrue);
      links.display('Links after add link');
    });
    test('empty properties', () {
      var link = new Link('', '');
      var added = links.add(link);
      expect(added, isTrue);
      links.display('Links after empty properties');
    });
    test('null property', () {
      var link = new Link(null, '');
      var added = links.add(link);
      expect(added, isTrue);
      links.display('Links after null property');
    });
    test('not unique name', () {
      var link = new Link('On Dart', 'http://ondart.me/');
      var added = links.add(link);
      expect(added, isFalse);
      links.display('Links after not unique name');
    });
    test('find link', () {
      var link = links.find('Books To Read');
      expect(link, isNotNull);
    });
    test('find no link', () {
      var link = links.find('Books');
      expect(link, isNull);
    });
    test('remove link', () {
      var link = links.find('On Dart');
      expect(link, isNotNull);
      var removed = links.remove(link);
      expect(removed, isTrue);
      links.display('Links after remove link');
    });
    test('remove no link', () {
      var link = links.find('Books');
      expect(link, isNull);
      var removed = links.remove(link);
      expect(removed, isFalse);
      //links.display('Links after remove no link');
    });
    test('sort links', () {
      links.sort();
      links.display('Links after sort links');
    });
    test('from links to JSON', () {
      var json = links.toJson();
      expect(json, isNotNull);
      print(json);
    });
    test('from JSON to links', () {
      List<Map<String, Object>> json = links.toJson();
      links.clear();
      expect(links.isEmpty, isTrue);
      links.fromJson(json);
      expect(links.isEmpty, isFalse);
      links.display('Links after from JSON to links');
    });
    test('from links to JSON string', () {
      var json = links.toJson();
      expect(json, isNotNull);
      String text = JSON.encode(json);
      print(text);
    });
    test('from JSON string to links', () {
      var json = links.toJson();
      expect(json, isNotNull);
      String text = JSON.encode(json);
      List list = JSON.decode(text);
      print(list);
    });
  });
}

main() => testLinks();
