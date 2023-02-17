import 'dart:io';

void main() {
  bool done = false;
  while (!done) {
    print("Enter the first number:");
    double num1 = double.parse(stdin.readLineSync()!);

    print("Enter the second number:");
    double num2 = double.parse(stdin.readLineSync()!);

    print("Enter the operation (+, -, *, /):");
    String operation = stdin.readLineSync()!;

    double result = calculate(num1, num2, operation);
    print("Result: $result");

    print("Do you want to continue? (y/n)");
    String choice = stdin.readLineSync()!;
    if (choice.toLowerCase() != "y") {
      done = true;
    }
  }
}

double calculate(double num1, double num2, String operation) {
  double result = 0;
  if (operation == "+") {
    result = num1 + num2;
  } else if (operation == "-") {
    result = num1 - num2;
  } else if (operation == "*") {
    result = num1 * num2;
  } else if (operation == "/") {
    if (num2 != 0) {
      result = num1 / num2;
    } else {
      print("Error: Cannot divide by zero");
    }
  } else {
    print("Error: Invalid operation");
  }
  return result;
}
