
void main() {
  int a = 10;
  int b = 20;
  int c = 30;

  int hasil1 = factorial(a);
  int hasil2 = factorial(b);
  int hasil3 = factorial(c);
  
  print('Nilai Facttorial dari : ');
  print('a. $a : $hasil1');
  print('b. $b : $hasil2');
  print('c. $c : $hasil3');
}

int factorial(int n) {
  if (n == 0) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}

