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



  return "";
}
