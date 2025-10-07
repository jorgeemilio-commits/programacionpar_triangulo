import 'package:programacionpar_triangulo/programacionpar_triangulo.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    test('Debe lanzar un error si los lados son cero', () {
      final longitud = [0, 0, 0];
      expect(() => checarTriangulo(longitud), throwsA(isA<ArgumentError>().having((e) => e.message, 'message', 'Los lados del triángulo deben ser mayores que cero')));
    });

    test('Debe lanzar un error si los lados son negativos', () {
      final longitud = [-4, 5, 5];
      expect(() => checarTriangulo(longitud), throwsA(isA<ArgumentError>().having((e) => e.message, 'message', 'Los lados del triángulo deben ser mayores que cero')));
    });


  test('El triangulo debe de ser equilatero', () {
      final longitud = [1, 1, 1];
      expect(checarTriangulo(longitud), 'El triángulo es equilátero');
    });

    test('El triangulo debe de ser equilatero 2', () {
      final longitud = [10000, 10000, 10000];
      expect(checarTriangulo(longitud), 'El triángulo es equilátero');
    });

    test('El triangulo debe de ser equilatero 3', () {
      final longitud = [3, 3, 3];
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

  test('Debe lanzar un error si los lados no forman un triángulo', () {
      final longitud = [1, 1, 100];
      expect(() => checarTriangulo(longitud), throwsA(isA<ArgumentError>().having((e) => e.message, 'message', 'No es un triángulo válido')));
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
   
   test('El triangulo debe ser escaleno y lanzar un error (caso no triángulo)', () {
      final longitud = [584, 32, 414];
      expect(() => checarTriangulo(longitud), throwsA(isA<ArgumentError>().having((e) => e.message, 'message', 'No es un triángulo válido')));
    });

    test('Debe lanzar un error si la lista no tiene 3 elementos (corta)', () {
      final longitudCorta = [1, 2];
      expect(() => checarTriangulo(longitudCorta), throwsA(isA<ArgumentError>().having((e) => e.message, 'message', 'La lista debe contener exactamente tres elementos.')));
    });

    test('Debe lanzar un error si la lista no tiene 3 elementos (larga)', () {
      final longitudLarga = [1, 2, 3, 4];
      expect(() => checarTriangulo(longitudLarga), throwsA(isA<ArgumentError>().having((e) => e.message, 'message', 'La lista debe contener exactamente tres elementos.')));
    });
    
  });
}
