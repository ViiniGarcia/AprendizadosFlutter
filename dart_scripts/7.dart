void main() {
  double peso = 105;
  double altura = 1.90;
 
  double calculo = (peso / (altura * altura));
 
  if(calculo >= 18.5 && calculo <= 24.9){
    print("Normal. IMC: $calculo");
  }
  else{
    print("Peso fora do normal. IMC: $calculo");
  }
}
