import "dart:io";

void main() {
  stdout.write("Enter the Number: ");
  int? num = int.parse(stdin.readLineSync()!);
  int num2 = num;
  int sum = 0;
  while (num2 > 0) {
    int rem = num2 % 10;
    sum += rem;
    num2 ~/= 10;
  }
  if (sum == num) {
    stdout.write("$num is perfect Number");
  } else {
    stdout.write("$num is not a perfect Number");
  }
}
