void main (){
  
  final numbers = [1,2,3,4,5,5,5,6,7,8,9,9,10];
  
  print('Lista original: $numbers');
  
    print('------------------------');
  
  print('${numbers.length}');
  
    print('------------------------');
  
  print('Registro numero: ${numbers[1]}'); // pa ver un numero en especifico
  
  print('------------------------');
  
  print('Primer registro: ${numbers.first}');
 print('ultimo registro: ${numbers.last}'); 
  
    print('------------------------');
  
  print('Reversed: ${numbers.reversed}');
  
    print('------------------------');
  
  final numbersreverse = numbers.reversed;
  
   print('Iterable: ${numbersreverse}');
  
  print('List: ${numbersreverse.toList()}');
  
   print('Set: ${numbersreverse.toSet()}');
  
  final numeromasbigquefive = numbers.where( (num) {
    return num > 5;
  });
  
  print('>5 iterable: ${numeromasbigquefive}');
   print('>5 set: ${numeromasbigquefive.toSet()}');
  
 
  
}