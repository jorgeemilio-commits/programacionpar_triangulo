import 'package:programacionpar_triangulo/programacionpar_triangulo.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final awesome = Awesome();
    test('El triangulo debe ser mayor 0 todos los lados', () {
      final longitud = [0, 0, 0];
      expect(checarTriangulo(longitud), 'Los lados del triángulo deben ser mayores que cero');
    });

  test('El triangulo debe de ser equilatero', () {
      final longitud = [1, 1, 1];
      expect(checarTriangulo(longitud), 'El triángulo es equilátero');
    });
  
  test('El triangulo debe ser isosceles', () {
      final longitud = [3, 3, 2];
      expect(checarTriangulo(longitud), 'El triángulo es isosceles');
    });

  test('Si el triangulo no es posible que exista', () {
      final longitud = [1, 1, 100];
      expect(checarTriangulo(longitud), 'No es un triángulo');
    });



    
  });
}
