import "dart:io";

int fact(int x) {
  int mult = 1;
  while (x > 0) {
    mult *= x;
    x--;
  }
  return mult;
}

void main() {
  stdout.write("Enter the Number: ");
  int? num = int.parse(stdin.readLineSync()!);
  var num2 = num;
  int sum = 0;
  while (num2 > 0) {
    int rem = num2 % 10;
    sum += fact(rem);
    num2 ~/= 10;
  }
  if (num == sum) {
    print("$num is strong number");
  } else {
    print("$num is not a strong number");
  }
}
