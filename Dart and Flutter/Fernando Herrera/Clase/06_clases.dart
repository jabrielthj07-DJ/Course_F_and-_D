void main() {
   final Hero Deadpool = Hero(
    name: 'Jony',
    power: 'Invencible',
    category: 'Comedia y Accion',
  );

  print(Deadpool);
  print(Deadpool.name);
  print(Deadpool.power);
  print(Deadpool.category);
}

class Hero {
  String name;
  String power;
  String category;

  // Constructor Opcion uno y la mas viable usar pa consumo de API
 Hero({required this.name, required this.power, required this.category});

  // Constructor opcion dos mas larga
  //Hero(String pName, String pPower, String pCategory)
    //: name = pName,
      //power = pPower,
      //category = pCategory;

       // en vez de que slga instance of hero, sobre escribimoscon un toString y agregamos el name and power
  @override
  String toString() {
    return '$name - $power';
  }
}
