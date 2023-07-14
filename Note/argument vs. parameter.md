##### what's the difference between argument and parameter? 

In programming, the terms "argument" and "parameter" are often used interchangeably, but they refer to different concepts:

- Parameter: A parameter is a variable or placeholder declared in a function or method definition. It represents the value that is expected to be passed into the function when it is called. Parameters are defined as part of the function signature and specify the types and names of the values that the function expects to receive.
- Argument: An argument is the actual value or expression that is passed to a function when it is called. It corresponds to a parameter and provides the specific data that the function will operate on. Arguments are passed to a function when invoking or calling it

In simple terms, a parameter is the variable declaration in the function definition, and an argument is the actual value that is passed to the function when calling it.

Here's an example to illustrate the difference:

```Dart
void greet(String name) {
  print('Hello, $name!');
}

void main() {
  String person = 'Alice';
  greet(person); // 'person' is the argument passed to the 'name' parameter
}

```

In this example, name is the parameter declared in the greet function, and person is the argument that is passed to the name parameter when calling the greet function.