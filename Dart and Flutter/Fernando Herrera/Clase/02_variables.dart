void main (){
  final String pokemon = 'Pikachu';
  final int hp = 100;
  final bool isAlive = true;
  final List <String> habilities = ['Impact Trueno, Cola de Hierro'];
  final sprites = <String> ['pikachu/front.png , pikachu/back.png'];
  
  print // En este caso es un print multilinea, osea que permitira imprimir varias cosas 
  (""" 
  $pokemon
  $hp
  $isAlive
  $habilities
  $sprites
  """);
}

// Example two dynamic
//void main (){
//   final String pokemon = 'Pikachu';
//   final int hp = 100;
//   final bool isAlive = true;
//   final List <String> habilities = ['Impact Trueno, Cola de Hierro'];
//   final sprites = <String> ['pikachu/front.png , pikachu/back.png'];
  
//   dynamic errormessage = 'Hi this is Danger';
  
//     errormessage = true;
//     errormessage = [1,2,3,4,5,6];
//     errormessage = {1,2,3,4,5,6};
   
//   print 
//    ("""
//   $errormessage
  
//   """);
  
// }