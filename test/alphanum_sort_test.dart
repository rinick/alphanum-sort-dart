// Copyright (c) 2016, Rick Zhou. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library alphanum_sort.test;

import 'package:alphanum_sort/alphanum_sort.dart';
import 'package:test/test.dart';

void main() {
  group('AlphaNum Sort', () {
    test('Test Number', () {
      expect(('a123,a13,b12,b8,a4,a55,c1'.split(',')
        ..sort(AlphaNumSort.compare)).join(','), 
        equals('a4,a13,a55,a123,b8,b12,c1'));
    });
    
    test('Test Sign', () {
       expect(('a+123,a+13,a+4,a-123,a-13,a-4,a0'.split(',')
         ..sort(AlphaNumSort.compare)).join(','), 
         equals('a-123,a-13,a-4,a0,a+4,a+13,a+123'));
     });
  });
  
  
  group('Case Insensitive Sort', () {
    test('Test Number', () {
      expect(('a123,a13,b12,b8,a4,a55,c1'.split(',')
        ..sort(AlphaNumSort.compareCaseInsensitive)).join(','), 
        equals('a4,a13,a55,a123,b8,b12,c1'));
    });
    
    test('Test Sign', () {
       expect(('a+123,a+13,a+4,a-123,a-13,a-4,a0'.split(',')
         ..sort(AlphaNumSort.compareCaseInsensitive)).join(','), 
         equals('a-123,a-13,a-4,a0,a+4,a+13,a+123'));
     });
    test('Test Case', () {
      expect(('aAA,AaA,aCa,AAa,aAa,AAB'.split(',')
        ..sort(AlphaNumSort.compareCaseInsensitive)).join(','), 
        equals('AAa,AaA,aAA,aAa,AAB,aCa'));
    });

  });
}
