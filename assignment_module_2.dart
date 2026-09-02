import 'dart:io';

void main() {
  bool continueProgram = true;

  while (continueProgram) {
    print("\n====================================");
    print("       SMART TEMPERATURE CONVERTER");
    print("====================================\n");

    print("1. Celsius to Fahrenheit");
    print("2. Fahrenheit to Celsius");
    print("3. Celsius to Kelvin");
    print("4. Kelvin to Celsius");
    print("5. Fahrenheit to Kelvin");
    print("6. Kelvin to Fahrenheit");
    print("7. Exit");

    stdout.write("\nEnter your choice: ");

    int? choice = int.tryParse(stdin.readLineSync() ?? "");

    double temperature;
    double result;

    switch (choice) {
      case 1:
        stdout.write("Enter temperature in Celsius: ");
        temperature = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

        result = (temperature * 9 / 5) + 32;

        print("${temperature}°C = ${result}°F");
        break;

      case 2:
        stdout.write("Enter temperature in Fahrenheit: ");
        temperature = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

        result = (temperature - 32) * 5 / 9;

        print("${temperature}°F = ${result.toStringAsFixed(2)}°C");
        break;

      case 3:
        stdout.write("Enter temperature in Celsius: ");
        temperature = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

        result = temperature + 273.15;

        print("${temperature}°C = ${result.toStringAsFixed(2)} K");
        break;

      case 4:
        stdout.write("Enter temperature in Kelvin: ");
        temperature = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

        result = temperature - 273.15;

        print("${temperature} K = ${result.toStringAsFixed(2)}°C");
        break;

      case 5:
        stdout.write("Enter temperature in Fahrenheit: ");
        temperature = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

        result = (temperature - 32) * 5 / 9 + 273.15;

        print("${temperature}°F = ${result.toStringAsFixed(2)} K");
        break;

      case 6:
        stdout.write("Enter temperature in Kelvin: ");
        temperature = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

        result = (temperature - 273.15) * 9 / 5 + 32;

        print("${temperature} K = ${result.toStringAsFixed(2)}°F");
        break;

      case 7:
        continueProgram = false;
        break;

      default:
        print("Invalid choice! Please select a number between 1 and 7.");
        continue;
    }

    if (choice != 7) {
      stdout.write("\nDo you want to perform another conversion? (y/n): ");

      String answer = (stdin.readLineSync() ?? "").toLowerCase();

      if (answer != "y") {
        continueProgram = false;
      }
    }
  }

  print("\n====================================");
  print("           Thank You!");
  print("           Program Ended");
  print("====================================");
}
