void main() {
  print(greetEveryone());
  print(greetEveryonetwo());

  print(addnumbertwo(10, 20));
  // Tarea video
  print(addnumbertwoo(10, 40));


    print(PersonMessage(name: 'DJ'));
}

// Funcion de flecha => / esta retorna un valor se utiliza en otros lenguajes tambien como jsy typescript

String greetEveryone() {
  return 'Hola Mundo';
}

// En este caso no pondremos return osea en el cuerpo de la funcion ya que quitaria el metodo tradicional
// que es el de la flech GORDA o funcion de flecha, En resumen despues de => va lo que queremos retornar

String greetEveryonetwo() => 'Hola De nuevo';

int addnumbertwo(a, b) {
  return a + b;
}

// Tarea pasar lo de numero con cuerpo a funcion de flecha gorda

int addnumbertwoo(a, b) => a + b;

// para numeros opcionales en este caso dice que si hay un valor nullo le agregara el valor de 0
// aunque tambien se puede usar en el cuerpo detras dereturn los siguientes metodos

int addnumberoptional(a, [int b = 0]) {
  //opcion mas limpia y mejor
  //b = b ?? 0; opcion para especificar mejor que b puede llegar a ser nulla
  //b ??= 0; opcion mas reducida para especificar que b puede ser nulla
  return a + b;
}



// Ponemos en este caso requerido el campo o el valor de name, y ya por defecto esta si no se escribe nada
// en message, aunque haciendo lo mismo de name en el primt pero esta vez co message podemos agregar lo que queramo

String PersonMessage({required String name, message = 'Hola,'}) {
  return '$message DJ';
}