import "dart:io";

void main() {
  stdout.write("Enter the number: ");
  int? num = int.parse(stdin.readLineSync()!);
  int num1 = 0;
  int num2 = 1;
  for (int i = 1; i <= num; i++) {
    stdout.write("$num1 ");
    int num3 = num1 + num2;
    num1 = num2;
    num2 = num3;
  }
}
