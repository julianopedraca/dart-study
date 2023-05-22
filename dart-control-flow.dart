void main() {
  /* 
  we got 2 types of control flow
    -Loops
    -Branches
  */

  List<int> arr = [1, 5, 8, 15, 10];

  // Loops
  // For loops
  for (int i = 0; i < arr.length; ++i) {
    int x = arr[i];
    print('for $x');
  }

  for (var element in arr) {
    print("for in $element");
  }

  arr.forEach((element) {
    print("for each $element");
  });

  int i = 0;
  while (i <= 5) {
    print('inside while $i');
    i++;
  }

  //always execute the code at least once
  int x = 0;
  do {
    print('inside do while $x');
    x++;
  } while (x <= 5);

  // loop control statements
  // - Break
  // - Continue

  int count = 1;

  while (count <= 10) {
    print('while loop $count');
    count++;

    if (count == 4) {
      break;
    }
  }
  print('out of the loop');

  count = 0;

  while (count <= 5) {
    count++;

    if (count == 2) {
      print("Number 2 is skipped");
      continue;
    }

    print("you are inside loop $count");
  }

  print("you are out of while loop");

  //Braches
  /*
  -if statements and elements
  -if-case statements and elements
  -switch statements and expressions
  */

  String? sample;

  if (sample == null) {
    print('no sample text');
  } else {
    sample = 'hey guys!';
    print('this is the sample text: $sample');
  }

  int gfg = 1;
  switch (gfg) {
    case 1:
      {
        print("GeeksforGeeks number 1");
      }
      break;
    case 2:
      {
        print("GeeksforGeeks number 2");
      }
      break;
    case 3:
      {
        print("GeeksforGeeks number 3");
      }
      break;
    default:
      {
        print("This is default case");
      }
      break;
  }
}
