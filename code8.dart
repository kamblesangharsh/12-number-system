import "dart:io";

void main() {
  stdout.write("Enter the Number: ");
  int? num = int.parse(stdin.readLineSync()!);
  int num2 = num;
  bool flag = false;
  while (num2 > 0) {
    if (num2 % 10 == 0) {
      flag = true;
    }
    num2 ~/= 10;
  }
  if (flag) {
    print("$num is duck number");
  } else {
    print("$num is not a duck number");
  }
}
