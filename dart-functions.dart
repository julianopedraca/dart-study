void main() {
  // Functions
  myFunc() {
    print("Hello Functions!");
  }

  myOtherFuc() {
    return "Hello Function!";
  }

  myNameFunc(String name) {
    return "Hello $name";
  }

  myFunc();

  print(myOtherFuc());

  print(myNameFunc('juba'));

  //optional position parameters
  myFuncOptionalParameters(String name1, [name2]) {
    if (name2 == null) {
      return "Hello $name1";
    }
    return "Hello $name1 and $name2";
  }

  print(myFuncOptionalParameters('juba'));

  //named optional parameters
  myFuncNamedParams(String name1, {name2}) {
    return "Heloo $name1 and $name2";
  }

  print(myFuncNamedParams('juba', name2: 'Big'));

  //assign default value to function
  myFuncWithDefaultValue(String name1, {name2 = 'dude'}) {
    return "My $name2 $name1";
  }

  print(myFuncWithDefaultValue('juba'));
  print(myFuncWithDefaultValue('juba', name2: 'friend'));

  myNamedFuncWithRequired(String name, nickname, {required int age}) {
    return "name: $name  age: $age  nickname: $nickname";
  }

  //if we dont set age it will cause an error
  print(myNamedFuncWithRequired('juba', 'juju', age: 28));

  printElement(int element) {
    print(element);
  }

  List<int> list = [1, 2, 3];

// Pass printElement as a parameter.
  list.forEach(printElement);

  //anonimous function
  const List<String> fruitList = ['apples', 'bananas', 'oranges'];
  fruitList.map((item) {
    return item.toUpperCase();
  }).forEach((item) {
    print('$item: ${item.length}');
  });
}
