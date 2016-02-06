// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library alphanum_sort.example;

import 'package:alphanum_sort/alphanum_sort.dart';

main() {
  var list = ["file10.txt","file1.txt","file9.txt","file12.txt","file5.txt"];
  print(list..sort(AlphaNumSort.compare));
}