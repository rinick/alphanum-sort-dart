# alphanum_sort

A library for Alpha Number mixed string sort

## Usage

A simple usage example:

    import 'package:alphanum_sort/alphanum_sort.dart';

    main() {
      var list = ["file10.txt","file1.txt","file9.txt","file12.txt","file5.txt"];
      list.sort(AlphaNumSort.compare);
    }

## Features and bugs

(AlphaNumSort.compareCaseInsensitive only supports a-z A-Z, it doesn't support upper case of unicode characters

