// Getters y Setters

// _ = Privado

void main() {
  final mySquare = Square(side: 10);

  //Con CalculateArea
  //print('Area: ${mySquare.calculateArea()}');

  mySquare.side = 5; // example setter

  //con getter
  print('Area: ${mySquare.area}');
}

class Square {
  //1er exercise
  // double side; // Side * Side
  //2do exercise
  double _side; // final porque nunca esta cabiando

  // 1er constructor
  //Square({required this.side});
  // 2do constructor
  Square({
    required double side,
  }) // le podemos poner double para ser bien, bien especificos
  : _side = side;

  //1er
  // double calculateArea() {
  //   return side * side;
  // }
  //2do
  double calculateArea() {
    return _side * _side;
  }

  //example de getter
  // 1er
  //  double get area {
  //   return side * side;
  //}
  //2do
  double get area {
    return _side * _side;
  }

  // example de setter
  set side(double value) {
    print('Configuracion nuevo valor: $value');

    if (value < 0)
      throw 'El valor tiene que ser > mayor que 0 '; // el trow termina la ejecucion de ese setter

    _side = value;
  }
}
