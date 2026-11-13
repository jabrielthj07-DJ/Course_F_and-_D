void main() {
  //final Spiderman = Hero(name: 'Pitter', power: 'Telarana', isAlive: true); //prueba normal

  // Simulacion de un Json nota solo es temporalen las peticiones http es diferente obviamente
  final Map<String, dynamic> rawjson = {
    'name': 'Parker',
    'power':
        'Saltar', // Mucho ojo: Me salia not found aqui, y que crees ?, era un espacio jaja
    'isAlive':
        true, // asi que con cuidado con los espacios o caracteres que agregmos here
  };

  // Simulacion
  final Spiderman = Hero.fromJson(rawjson); // prueba json

  print(Spiderman);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  // Simulacion JSON
  // nt DJ: siempre probar los datos que viene por si acaso osea con ?? para verificar los nullos
  Hero.fromJson(Map<String, dynamic> Json)
    : name = Json['name'] ?? 'Name not found',
      power = Json['power'] ?? 'Power not found',
      isAlive = Json['isAlive'] ?? 'Not found';

  @override
  String toString() {
    return 'Name: $name Poder: $power Estado: ${isAlive ? 'Se encuentra con Vida' : 'No se encuentra con vida'}';
  }
}