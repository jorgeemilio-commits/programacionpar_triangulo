import 'package:programacionpar_triangulo/programacionpar_triangulo.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final awesome = Awesome();
    test('El triangulo debe ser mayor 0 todos los lados', () {
      final longitud = [0, 0, 0];
      expect(checarTriangulo(longitud), 'Los lados del triángulo deben ser mayores que cero');
    });

  test('El triangulo debe ser mayor 0 todos los lados', () {
      final longitud = [0, 1, 0];
      expect(checarTriangulo(longitud), 'Los lados del triángulo deben ser mayores que cero');
    });



    
  });
}
