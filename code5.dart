import "dart:io";

int mult(int x) {
  int mult1 = 1;
  while (x > 0) {
    mult1 *= 10;
    x--;
  }
  return mult1;
}

void main() {
  stdout.write("Enter the number: ");
  int? num = int.parse(stdin.readLineSync()!);
  int num2 = num;
  int sum = 0;
  int cnt = 0;

  while (num2 > 0) {
    num2 ~/= 10;
    cnt++;
  }
  cnt--;
  int num3 = num;
  while (num3 > 0) {
    int rem = num3 % 10;
    sum += (mult(cnt) * rem);
    cnt--;
    num3 ~/= 10;
  }
  if (sum == num) {
    print("$num is palindrome");
  } else {
    print("$num is not palindrome");
  }
}
