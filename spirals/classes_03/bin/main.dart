// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:classes/classes.dart';

main() {
  var link1 = new Link('dzenanr', 'https://github.com/dzenanr');
  print('Dzenan Ridjanovic at GitHub: ${link1.name}, ${link1.url}');
  var link2 = new Link('dzenanr', 'dr 15');
  print('Dzenan Ridjanovic: ${link2.name}, ${link2.url}');
}
