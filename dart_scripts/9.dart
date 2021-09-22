void main() {
  double peso = 105;
  double altura = 1.90;
  var sexo = 'homem';
 
  double calculo = (peso / (altura * altura));
 
  if(sexo == 'mulher'){
    if(calculo <19){
      print("Abaixo do peso. IMC: $calculo");
    }
    else if(calculo >= 19 && calculo < 24){
      print("Peso Ideal. IMC: $calculo");
    }
    else if(calculo >= 24){
      print("Acima do peso. IMC: $calculo");
    }
 }
 else{
   if(calculo <20){
      print("Abaixo do peso. IMC: $calculo");
    }
    else if(calculo >= 20 && calculo < 25){
      print("Peso Ideal. IMC: $calculo");
    }
    else if(calculo >= 25){
      print("Acima do peso. IMC: $calculo");
    }
  }
}