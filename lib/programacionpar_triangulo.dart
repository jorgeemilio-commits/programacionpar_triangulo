library;
export 'src/programacionpar_triangulo_base.dart';

String checarTriangulo(List<int> lados) {
  if (lados.length != 3) {
    throw ArgumentError('La lista debe contener exactamente tres elementos.');
  }

  int a = lados[0];
  int b = lados[1];
  int c = lados[2];

  if (a <= 0 || b <= 0 || c <= 0) {
    return 'Los lados del triángulo deben ser mayores que cero';
  }

  if (a + b <= c || a + c <= b || b + c <= a) {
    return 'No es un triángulo';
  }

  if(a == b && b == c) {
    return 'El triángulo es equilátero';
  } else if (a == b && a !=c) {
    return 'El triángulo es isosceles';
  } else if (a==c && a!=b) {
    return 'El triángulo es isosceles';
  } else if(b==c && b!=a) {
    return 'El triangulo es isosceles';
  } else {
    return 'El triángulo es escaleno';
  }

  }

