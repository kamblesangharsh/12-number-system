import "dart:io";

void main() {
  stdout.write("Enter the Number: ");
  int? num = int.parse(stdin.readLineSync()!);
  int count = 0;
  int num2 = num;
  while (num2 > 0) {
    num2 ~/= 10;
    count++;
  }
  count--;
  int num3 = num;
  int sum = 0;
  while (num3 > 0) {
    int rem = num3 % 10;
    sum += rem ^ count;
    num3 ~/= 10;
  }
  if (sum == num) {
    print("$num is armstrong number");
  } else {
    print("$num is not armstrong number");
  }
}
