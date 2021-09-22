void main() {

  double valor = 30;
  double n1 = 0, n2 = 1, nextTerm;
  print('Fibonacci, primeiros 30 números:');
  
  for (var i = 1; i <= valor; i++) {
      print(n1);
      nextTerm = n1 + n2;
      n1 = n2;
      n2 = nextTerm;
  }

}