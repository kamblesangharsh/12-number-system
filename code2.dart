import "dart:io";

void main() {
  stdout.write("Enter the number: ");
  int? num = int.parse(stdin.readLineSync()!);
  int num2 = 2;
  bool flag = false;
  while (num2 < ((num ~/ 2) + 1)) {
    if ((num % num2) == 0) {
      flag = true;
    }
    num2 += 1;
  }
  if (flag) {
    print("$num Not prime number");
  } else {
    print("$num prime number");
  }
}
