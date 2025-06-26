void main() {
  // 1. Define Variables
  int myInt = 25;
  double myDouble = 12.5;
  String myString = "42";
  bool myBool = true;
  List<int> myList = [5, 12, 100, 150, -3, 0];

  print("=== Defined Variables ===");
  print("int: $myInt");
  print("double: $myDouble");
  print("String: $myString");
  print("bool: $myBool");
  print("List: $myList\n");

  // 2. Type Conversion Functions
  print("=== Type Conversions ===");
  String strNumber = "123";
  print("String to int: ${stringToInt(strNumber)}");
  print("String to double: ${stringToDouble(strNumber)}");

  int intNum = 77;
  print("Int to String: ${intToString(intNum)}");
  print("Int to Double: ${intToDouble(intNum)}\n");

  // 3. Function convertAndDisplay
  print("=== convertAndDisplay Function ===");
  convertAndDisplay("56");

  // 4. Control Flow - If-Else
  print("\n=== If-Else Conditions ===");
  int numCheck = -7;
  if (numCheck > 0) {
    print("$numCheck is positive");
  } else if (numCheck < 0) {
    print("$numCheck is negative");
  } else {
    print("$numCheck is zero");
  }

  int age = 17;
  if (age >= 18) {
    print("Eligible to vote");
  } else {
    print("Not eligible to vote");
  }

  // 5. Switch Statement
  print("\n=== Switch Statement (Day of the Week) ===");
  int day = 3;
  switch (day) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("Invalid day");
  }

  // 6. Loops
  print("\n=== For Loop (1 to 10) ===");
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  print("\n=== While Loop (10 to 1) ===");
  int j = 10;
  while (j >= 1) {
    print(j);
    j--;
  }

  print("\n=== Do-While Loop (1 to 5) ===");
  int k = 1;
  do {
    print(k);
    k++;
  } while (k <= 5);

  // 7. Combining Data Types and Control Flow
  print("\n=== Looping through List and Categorizing ===");
  for (int num in myList) {
    print("Number: $num");

    // Even or Odd
    if (num % 2 == 0) {
      print("$num is even");
    } else {
      print("$num is odd");
    }

    // Categorization using switch
    switch (true) {
      case true when (num >= 1 && num <= 10):
        print("Category: Small");
        break;
      case true when (num >= 11 && num <= 100):
        print("Category: Medium");
        break;
      case true when (num > 100):
        print("Category: Large");
        break;
      default:
        print("Category: Unclassified");
    }
    print(""); // line break
  }
}

// Function to convert String to int
int stringToInt(String value) {
  return int.parse(value);
}

// Function to convert String to double
double stringToDouble(String value) {
  return double.parse(value);
}

// Function to convert int to String
String intToString(int value) {
  return value.toString();
}

// Function to convert int to double
double intToDouble(int value) {
  return value.toDouble();
}

// Function that takes a String and converts it
void convertAndDisplay(String input) {
  int intValue = int.parse(input);
  double doubleValue = double.parse(input);
  print("Converted to int: $intValue");
  print("Converted to double: $doubleValue");
}
