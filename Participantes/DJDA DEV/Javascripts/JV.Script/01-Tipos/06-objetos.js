// Personaje de TV

let nombre = "Tanjiro";
let anime = "Demon Slayer";
let edad = 16;

let personaje = {
nombre: "Tanjiro",
anime: "Demon Slayer",
edad: 16,

};
console.log(personaje); 
console.log (personaje.nombre);
console.log(personaje[ 'anime ']);

// Modificar una propiedad

 //Se le agrega nuevo valor ( Esto si se quiere cambiar o actualizar la informacion)
 personaje.edad = 13;

  // Igual se puedeutilizar la siguiente manera ( la mejor y mas utilizada es la primera)
  personaje [ 'edad '] = 16; 

  // Borrar propiedades en este caso anime

  delete personaje.anime;
  
  console.log(personaje);

 
