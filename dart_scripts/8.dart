void main(){

    double lado1 = 10;
    double lado2 = 10;
    double lado3 = 10;


    if (lado1 < lado2 + lado3 && lado2 < lado1 + lado3 && lado3 < lado1 + lado2) {
    if (lado1 == lado2 && lado2 == lado3) {
      print("TRIANGULO EQUILÁTERO");
    }
    else {
      if (lado1 == lado2 || lado1 == lado3 || lado3 == lado2) {
      print("TRIANGULO ISÓSCELES");
    }
    else {
      print("TRIANGULO ESCALENO");
    }
    }
    }
    else {
           print("NÃO É UM TRIANGULO");
    }
}