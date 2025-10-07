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
  
  test('El triangulo debe ser isosceles 1', () {
      final longitud = [3, 3, 2];
      expect(checarTriangulo(longitud), 'El triángulo es isosceles');
    });

     test('El triangulo debe ser isosceles 2', () {
      final longitud = [9, 5, 9];
      expect(checarTriangulo(longitud), 'El triángulo es isosceles');
    });

 test('El triangulo debe ser isosceles 3', () {
      final longitud = [50000, 3, 50000];
      expect(checarTriangulo(longitud), 'El triángulo es isosceles');
    });

  test('Si el triangulo no es posible que exista', () {
      final longitud = [1, 1, 100];
      expect(checarTriangulo(longitud), 'No es un triángulo');
    });

   test('El triangulo debe ser escaleno', () {
      final longitud = [2, 3, 4];
      expect(checarTriangulo(longitud), 'El triángulo es escaleno');
    });

    test('El triangulo debe ser escaleno 2', () {
      final longitud = [2000, 3000, 4000];
      expect(checarTriangulo(longitud), 'El triángulo es escaleno');
    });
    
    test('El triangulo debe ser escaleno 3', () {
      final longitud = [42, 38, 50];
      expect(checarTriangulo(longitud), 'El triángulo es escaleno');
    });

    test('El triangulo debe ser escaleno 3', () {
      final longitud = [42, 38, 50];
      expect(checarTriangulo(longitud), 'El triángulo es escaleno');
    });
   
   test('El triangulo debe ser escaleno y lanzar un error', () {
      final longitud = [584, 32, 414];
      expect(() => checarTriangulo(longitud), throwsException);
    });
    
  });
}
