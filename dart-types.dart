/* 
 data types in dart
 Number int,double,num
 String strings
 Booleans booleans
 Lists list
 Maps map 
*/

import 'dart:collection';

enum Color { red, green, blue }

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
  sign: This property is used to get -1, 0, or 1 depending upon the sign of the
  given number.
  isEven: If the given number is an even then this property will return true.
  isOdd: If the given number is odd then this property will return true.
  
  Methods: 
  abs(): This method gives the absolute value of the given number.
  ceil(): This method gives the ceiling value of the given number.
  floor(): This method gives the floor value of the given number.
  compareTo(): This method compares the value with other numbers.
  remainder(): This method gives the truncated remainder after dividing the two
  numbers.
  round(): This method returns the round of the number.
  toDouble(): This method gives the double equivalent representation of the
  number.
  toInt(): This method returns the integer equivalent representation of the
  number.
  toString(): This method returns the String equivalent representation of the
  number
  truncate(): This method returns the integer after discarding fraction digits.
   */

  //String data type

  var string = "hello world!";

  /*
  You can put the value of an expression inside a string by using ${expression}.
  It will help the strings to concatenate very easily. 
  */

  var string1 = 'hello world!';
  var string2 = '$string1 from Juba ;)';

  print(string2);

  // dart also allows to concatenate by using + operator

  var string3 = 'dart is ';
  var string4 = 'awsome';

  print(string3 + string4);

  // we can also check if two strings ar equal by using == operator

  var string5 = 'Coding!';
  var string6 = 'Coding!';

  print(string5 == string6);

  //Raw string are useful when you want to define a String that has a lot of
  //special character

  var string7 = r'--!@#!@#$%&';

  print(string7);

  //List data type

  //Fixed Length List
  //Here, the size of the list is declared initially and can’t be changed during
  //runtime

  List? list0 = List.filled(5, null, growable: false);
  list0[0] = 'code';
  list0[1] = 'is';
  list0[2] = 'awsome';

  print(list0);
  print(list0[0]);

  //Growable List
  //This type of list is declared without declaring the size of the list. Its
  //length can be changed during runtime.

  var list1 = ['code', 'is'];
  print(list1);

  //adding a value to the gwoable list
  list1.add('awsome');
  print(list1);

  //adding multiple values to the growable list
  list1.addAll(['my', 'dart', 'friend']);

  print(list1);

  //adding a value to the growable list at a specifidc index
  list1.insert(5, 'coder');
  print(list1);

  var list2 = ['hello', 'curitiba'];

  list2.insertAll(1, ['world', 'from']);
  print(list2);

  //Types of List (basis of its dimensions)

  /*
    1-Dimensional (1-D) List
    Here, we have already discussed the 1-D list. 
    2-Dimensional (2-D) List
    3-Dimensional (3-D) List
    Multidimensional List
  */

  //2-Dimensional (2-D) List
  //Here, the list is defined in two dimensions and thus forming the look of the
  //table.

  int a = 3;
  int b = 3;

  // Creating two dimensional list
  var twodlist = List.generate(a, (i) => List.filled(b, 0), growable: false);

  print(twodlist);

  // Inserting values
  for (int i = 0; i < 3; ++i) {
    for (int j = 0; j < 3; ++j) {
      twodlist[i][j] = i + j;
    }
  }

  print(twodlist);

  //3-Dimensional (3-D) List
  // Creating three dimensional list
  var threedlist = List.generate(
      3, (i) => List.generate(3, (j) => List.generate(3, (k) => i + j + k)));
  // Printing its value
  print(threedlist);

  //Note: In a similar fashion one can create an n-dimensional List i.e by using
  // the “List.generate()” method.

  //set data types
  //Sets in Dart is a special case in List where all the inputs are unique

  // there are two ways to declare a set

  var setDart = <String>{
    'this',
    'is',
    'a',
    'dart',
    'set',
    'dart',
    'this',
    'is'
  };

  //or,

  Set<String> setDart1 = {
    'this',
    'is',
    'a',
    'dart',
    'set',
    'dart',
    'this',
    'is'
  };

  print(setDart);
  print(setDart1);

  //adding single element to a dart set

  setDart1.add('Hi');

  print(setDart1);

  setDart1.addAll({'lets', 'code', 'everyone'});
  print(setDart1);

  //Converting Set to List in Dart
  Set<String> set_variable_name = {'convert', 'set', 'to', 'list'};
  print(set_variable_name);
  List<String> list_variable_name = set_variable_name.toList();
  print(list_variable_name);

  //Maps data types
  /*
  In Dart programming, Maps are dictionary-like data types that exist in
  key-value form (known as lock-key). There is no restriction on the type of
  data that goes in a map data type. Maps are very flexible and can mutate their
  size based on the requirements. However, it is important to note that all
  locks (keys) need to be unique inside a map data type.
  */

  //We can declare Map in two ways: Using Map Literals and using Map Constructors

  //Using Map Lietral

  /*
  Creating the Map using Map Literals
  var map_name = { key1 : value1, key2 : value2, ..., key n : value n }
  */

  var mapLiterals = {'key1': 10, 'key2': 20, 'key3': 30};

  print(mapLiterals['key1']); //should print 10
  print(mapLiterals[0]); //should print null

  //inserting a new value in Map
  mapLiterals['key0'] = 0;

  print(mapLiterals);

  //using Map constructor

  /*
  // Creating the Map using Map Constructor
  var map_name = new Map();
  // Assigning value and key inside Map
  map_name [ key ] = value;
  */

  var constructorMap = new Map();

  // inserting values into Map
  constructorMap[0] = 'dart';
  constructorMap[1] = 'programing';
  constructorMap[2] = 'mobile';

  print(constructorMap);

  //queue data type
  //A queue is a FIFO (First In First Out) data structure where the element that
  //is added first will be deleted first

  /*
  // With type notation(E)
  Queue<E> variable_name = new Queue<E>.from(list_name);
  
  // Without type notation
  var variable_name = new Queue.from(list_name);
  */

  //It must be noted that to use a queue in a dart program you have to import
  //‘dart:collection’ module

  Queue<String> sampleQueue = new Queue<String>();

  sampleQueue.add('hello');
  sampleQueue.add('world!');

  print(sampleQueue);

  //transform list to queue

  List<String> sampleList = ["value1", "value2", "value3"];

  Queue<String> listToQueue = new Queue<String>.from(sampleList);

  print(listToQueue);

  /*
  1. queue_name.add(element)	Adds the element inside the queue from the front.
  2. queue_name.addAll(collection_name)	Adds all the element present in the
  collection_name (generally List).
  3. queue_name.addFirst(element)	Adds the element from front inside the queue.
  4. queue_name.addLast(element)	Adds the element from back in the queue.
  5. queue_name.clear()	Removes all the elements from the queue.
  6. queue_name.first()	Returns the first element from the queue.
  7. queue_name.forEach(f(element))	Returns all the element present in the queue.
  8. queue_name.isEmpty	Returns boolean true if the queue is empty else return false.
  9. queue_name.length	Returns the length of the queue.
  10. queue_name.removeFirst()	Removes the first element from the queue.
  11. queue_name.removeLast()	Removes the last element from the queue.
  */

  //Records
  //*records require a language version of at leat 3.0
  /*
  Records are an anonymous, immutable, aggregate type. Like other collection
  types, they let you bundle multiple objects into a single object. Unlike other
  collection types, records are fixed-sized, heterogeneous, and typed.

  Records are real values; you can store them in variables, nest them, pass them
  to and from functions, and store them in data structures such as lists, maps,
  and sets.
  */

  var record = ('first', a: 2, b: true, 'last');

  print(record.$1); // Prints 'first'
  print(record.a); // Prints 2
  print(record.b); // Prints true
  print(record.$2); // Prints 'last'

  //enum
  //Enumerated types, often called enumerations or enums, are a special kind of
  //class used to represent a fixed number of constant values.

  final color = Color.green;

  print(color);

  switch (color) {
    case Color.red:
      print("this color is red");
      break;
    case Color.blue:
      print("this color is blue");
      break;
    case Color.green:
      print("this color is green");
      break;
  }
}
