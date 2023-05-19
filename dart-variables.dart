late String description;
void main() {
  //Syntax: To declare a variable:
  //type variable_name;
  //Syntax: To declare multiple variables of same type:
  //type variable1_name, variable2_name, variable3_name, ....variableN_name;

  //var are used as a dynamic inferred type

  /*
  1. Integer
  2. Double
  3. String
  4. Booleans
  5. Lists
  6. Maps 
  */

  String name = 'bob';

  //Default value
  //Unitialized variables that have a nullable type have an initial value of
  //null

  //If you enable null safety, then you must initialize the values of
  //non-nullable variables before you use them:

  //in this case as we havent initialized lineCount, so its default value is
  //null

  int? lineCount;

  print(lineCount);

  // If you enable null safety, then you must initialize the values of
  //non-nullable variables before you use them:

  int rowCount = 0;

  //The late modifier has two use cases:
  //Declaring a non-nullable variable that’s initialized after its declaration.
  //Lazily initializing a variable.

  //If you’re sure that a variable is set before it’s used, but Dart disagrees,
  //you can fix the error by marking the variable as late (off main void code):

  description = 'Feijoada!';
  print(description);

  //Final and const
  //If you never intend to change a variable, use final or const, either instead
  //of var or in addition to a type. A final variable can be set only once;
  //a const variable is a compile-time constant.
  //(Const variables are implicitly final.)

  //must declare the value right away
  const String constName = 'Juba';

  //error cause there is no value atributed to const
  const String otherName;

  //The value of the variable can change depending on runtime conditions.
  //You need lazy initialization (the value is computed when accessed for the first time).

  final String finalName = 'Juba';

  final String otherFinalName;

  otherFinalName = 'Big';

  //but you cant change the Final after its already declared

  otherFinalName = 'Smalls';
}
