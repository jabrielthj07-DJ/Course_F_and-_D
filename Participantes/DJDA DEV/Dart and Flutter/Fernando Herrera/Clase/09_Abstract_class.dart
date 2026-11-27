void main() {
  final windPlant = Windplant(initialEnergy: 100);
  final nuclearplant = Nuclearplant(energiaRestante: 1000);

  print(
    'wind: ${ChargePhone(windPlant)}',
  ); // this is the class and name the function
  print('nuclear: ${ChargePhone(nuclearplant)}');
}

// Funcion es opcional
double ChargePhone(PlantaEnergia plant) {
  if (plant.energiaRestante < 10) {
    throw 'Error no se puede cargar';
  }
  return plant.energiaRestante - 10;
}

// DEFINICION DE CLASE ASTARCTA

// Por convención en Dart, los tipos empiezan con mayúscula (UpperCamelCase)
// y sus valores con minúscula (lowerCamelCase).
enum TiposPlantas {
  nuclear,
  energia,
  solar,
} // puede usarse para teer las opciones tipo filtro

abstract class PlantaEnergia {
  double energiaRestante;
  final TiposPlantas type;

  PlantaEnergia({required this.energiaRestante, required this.type});

  //Por convención, los métodos usan camelCase (consumirEnergia).
  void consumirenergia(double cantidad);
}

// extends and implements
class Windplant extends PlantaEnergia {
  // extends is herencia
  Windplant({required double initialEnergy})
    : super(energiaRestante: initialEnergy, type: TiposPlantas.solar);

  @override // para que sepan que estoy sobreescribiendo el metodo de la clase abstract
  void consumirenergia(double cantidad) {
    energiaRestante -= cantidad;
  }
}

//implements
class Nuclearplant implements PlantaEnergia {
  double energiaRestante;
  final TiposPlantas type = TiposPlantas.nuclear;

  Nuclearplant({required this.energiaRestante});

  @override
  void consumirenergia(double cantidad) {
    energiaRestante -= (cantidad * 0.5); // variante in this class
  }
}
