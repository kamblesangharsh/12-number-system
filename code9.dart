import "dart:io";

void main() {
  stdout.write("Enter the number: ");
  int? num = int.parse(stdin.readLineSync()!);
  int sum = 0;
  int num2 = num;
  while (num2 > 0) {
    int rem = num2 % 10;
    sum += rem;
    num2 ~/= 10;
  }
  if ((num % sum) == 0) {
    print("$num is Harshad number");
  } else {
    print("$num is Not a Harshad number");
  }
}
