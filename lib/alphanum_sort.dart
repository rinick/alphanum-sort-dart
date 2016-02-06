// Copyright (c) 2016, Rick Zhou. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library alphanum_sort;


class AlphaNumSort {
  static int compare(String str1, String str2) {
    int len1 = str1.length;
    int len2 = str2.length;
    int lenMin = len1 < len2 ? len1 : len2;
    
    int numrslt = 0;
    int numsign = 1;
    int numlen = 0;
    for (int i = 0; i < lenMin; ++i) {
      int code1 = str1.codeUnitAt(i);
      int code2 = str2.codeUnitAt(i);
      if (code1 >= 48 && code1 <= 57) {
        if (code2 >= 48 && code2 <= 57) {
          if (numrslt == 0) {
            numrslt = code1 - code2;
          }
          numlen++;
          continue;
        }
        numrslt = 1;
      } else if (code2 >= 48 && code2 <= 57) {
        numrslt = -1;
      }
      if (numlen > 0) {
        if (numrslt != 0) {
          return numsign * numrslt;
        }
        numlen = 0;
      }
      if (code1 != code2) {
        // swap '+' and ';', so '-' < '0' < '+'
        if (code1 == 43) {
          code1 = 59;
        } else if (code1 == 59) {
          code1 = 43;
        }
        if (code2 == 43) {
          code2 = 59;
        } else if (code2 == 59) {
          code2 = 43;
        }
        return code1 - code2;
      }
      if (code1 == 45) {
        numsign = -1;
      } else {
        numsign = 1;
      }
    }
    return numsign*(len1 - len2);
  }
  static int compareCaseInsensitive(String str1, String str2) {
    int len1 = str1.length;
    int len2 = str2.length;
    int lenMin = len1 < len2 ? len1 : len2;
    
    int numrslt = 0;
    int numsign = 1;
    int numlen = 0;
    int caseDif = 0;
    for (int i = 0; i < lenMin; ++i) {
      int code1 = str1.codeUnitAt(i);
      int code2 = str2.codeUnitAt(i);
      if (code1 >= 48 && code1 <= 57) {
        if (code2 >= 48 && code2 <= 57) {
          if (numrslt == 0) {
            numrslt = code1 - code2;
          }
          numlen++;
          continue;
        }
        numrslt = 1;
      } else if (code2 >= 48 && code2 <= 57) {
        numrslt = -1;
      }
      if (numlen > 0) {
        if (numrslt != 0) {
          return numsign * numrslt;
        }
        numlen = 0;
      }
      if (code1 != code2) {
        int code1Lowercase = -1;
        // swap '+' and ';', so '-' < '0' < '+'
        if (code1 == 43) {
          code1 = 59;
        } else if (code1 == 59) {
          code1 = 43;
        } else if (code1 >= 97 && code1 <= 122) {
          // to upper case
          code1 -= 32;
          code1Lowercase = 1;
        }
        if (code2 == 43) {
          code2 = 59;
        } else if (code2 == 59) {
          code2 = 43;
        } else if (code2 >= 97 && code2 <= 122) {
          // to upper case
          code2 -= 32;
        }
        
        if (code1 != code2) {
          return code1 - code2;
        }
        if (caseDif == 0) {
          caseDif = code1Lowercase;
        }
      }
      if (code1 == 45) {
        numsign = -1;
      } else {
        numsign = 1;
      }
    }
    if (len1 == len2) {
      return caseDif;
    }
    return numsign*(len1 - len2);
  }
}
