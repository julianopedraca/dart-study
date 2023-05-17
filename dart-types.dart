/* 
 data types in dart
 Number int,double,num
 String strings
 Booleans booleans
 Lists list
 Maps map 
*/

void main() {
  // Number data types
  int num1 = 1;
  double num2 = 1.5;

  print(num1);
  print(num2);

  // The num type is an inherited data type of the int and double types

  var a1 = num.parse("1");
  var b1 = num.parse("2.34");

  var c1 = a1 + b1;
  print("Product = ${c1}");

  /*
  PROPERTIES AND METHODS CHEATSHEET
  Properties:
  hashcode: This property is used to get the hash code of the given number.
  isFinite: If the given number is finite, then this property will return true.
  isInfinite: If the number is infinite, then this property will return true.
  isNan: If the number is non-negative then this property will return true.
  isNegative: If the number is negative then this property will return true.
  sign: This property is used to get -1, 0, or 1 depending upon the sign of the given number.
  isEven: If the given number is an even then this property will return true.
  isOdd: If the given number is odd then this property will return true.
  Methods: 
  abs(): This method gives the absolute value of the given number.
  ceil(): This method gives the ceiling value of the given number.
  floor(): This method gives the floor value of the given number.
  compareTo(): This method compares the value with other numbers.
  remainder(): This method gives the truncated remainder after dividing the two numbers.
  round(): This method returns the round of the number.
  toDouble(): This method gives the double equivalent representation of the number.
  toInt(): This method returns the integer equivalent representation of the number.
  toString(): This method returns the String equivalent representation of the number
  truncate(): This method returns the integer after discarding fraction digits.
   */
}
