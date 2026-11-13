void main () {
  
  // Mapa / Map
  final Map<String, dynamic> pokemon = {
    'name' : 'Pikachu',
    'hp' : 100,
     'isAlive': true,
    'habilities' : <String>['Impact trueno'],
    'sprites': {
      1: 'pikachu/front.png',
      2: 'pikachu/back.png',
    }
    
  };
  
 // print(pokemon);
  //print('Name the one pokemon is: ${pokemon ['name']}');
  
  // Exercise 
  print('One Sprite Is: ${ pokemon["sprites"][1] }'); 

  // Exercise solcionados era por no m=poner el map <string, dynamic>
  print('Front: ${pokemon["sprites"][1]}');
   print('Back: ${pokemon["sprites"][2]}');
    
  
}