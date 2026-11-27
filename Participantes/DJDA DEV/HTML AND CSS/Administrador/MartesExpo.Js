
// function handleFormSubmit(event) {
//     event.preventDefault();

//     const formdata = new FormData(event.target);
//     const task = Object.fromEntries(formdata);
//     task.id = Date.now();

//     const taskElement = createtaskElement(task);
//     console.log(taskElement);

//     const UlContainer = document.getElementById('task-list-container')
//     if (UlContainer) return;

//     UlContainer.appendChild(taskElement);


    

//     }

// function createtaskElement(task) {
// // Froama larga de hacerlo


// const divTareaContenedor = document.createElement('div');
// divTareaContenedor.classList.add('Tarea-Contenedor');

// const h3title = document.createElement('h3');
// h3Title.textContent = task.title;

// const p = document.createElement('p');
// pdescription.textContent = task.description;

// divTareaContenedor.appendChild(h3Title);
// divTareaContenedor.appendChild(pdescription);

// const divTareaAcciones = document.createElement('div');
// divTareaAcciones.classList.add('Tarea-Acciones');

// const buttonEliminar = document.createElement('button');
// buttonEliminar.classList.add('Eliminar');
// buttonEliminar.textContent = 'Eliminar';

// divTareaAcciones.appendChild(buttonEliminar);

// const li =document.createElement('li');
// li.classList.add('Tarea-Item');
// li.id = task.id;

// li.appendChild(divTareaContenedor); // hacerlo en el orde de los divs porque si no se desalinean o hacen lo contrario
// li.appendChild(divTareaAcciones);

// return li;
// }

// // Tarea agregar validaciones, 
// // hacer que elimine
// // capturar el elementoy eleminarlo 
// //agregar boton de editar, cuando tocar sumit limpiar, no se agregue tarea con titulo vacio.
// //crear boton editar y cuando se este odificando se actualice y no se cree nueva tarea al tocar submit
// // 

// // renderizacion de tablas dinamicas




// // 

// function deleteTaskElemet(task) {
// const li = document.getElementById(task.id);
// if (li) {
//     li.remove();

// }
// }

// //         <li id="12"  class="Tarea-Item">
// //             <div class="Tarea-Contenedor">
// //                 <h3>Tarea 1</h3>
// //                 <p>Descripción de la tarea 1</p>
// //             </div>

// //             <div class="Tarea-Acciones">
// //                 <button class="Eliminar">Eliminar</button>
// //             </div>

// //         </li>

// // template html otro metodo largo / Backticks

// // const liTempltae = '
// // <li id="${task.id}"  class="Tarea-Item">
// //     <div class="Tarea-Contenedor">
// //         <h3>${task.title}</h3>
// //         <p>${task.description}</p>
// //     </div>
// //     <div class="Tarea-Acciones">
// //         <button class="Eliminar">Eliminar</button>
// //     </div>
// // </li>'
// // return lielemennt;


// FUNCIÓN PRINCIPAL DEL FORMULARIO


function handleFormSubmit(event) {

    // Evita que el formulario recargue la página
    event.preventDefault();


    // Captura los datos del formulario
    const formdata = new FormData(event.target);


    // Convierte los datos del formulario en un objeto
    const task = Object.fromEntries(formdata);


    // VALIDACIÓN

    // Verifica si el título viene vacío
    if (!task.title.trim()) {

        alert("El título no puede estar vacío");

        return;
    }


    // ID ÚNICO

    // Genera un ID único usando la fecha actual
    task.id = Date.now();


    // CREAR ELEMENTO HTML

    // Crea la tarea visualmente
    const taskElement = createTaskElement(task);


    // CAPTURAR EL UL

    // Captura el contenedor donde van las tareas
    const ulContainer = document.getElementById('task-list-container');

    // AGREGAR TAREA

    // Agrega la tarea al UL
    ulContainer.appendChild(taskElement);

    // LIMPIAR FORMULARIO

    // Limpia los inputs después de enviar
    event.target.reset();
}

// FUNCIÓN PARA CREAR LA TAREA

function createTaskElement(task) {

    // CONTENEDOR DEL CONTENIDO

    const divTaskContainer = document.createElement('div');

    divTaskContainer.classList.add('task-content');

    // TÍTULO

    const h3Title = document.createElement('h3');

    h3Title.textContent = task.title;

    // DESCRIPCIÓN

    const pDescription = document.createElement('p');

    pDescription.textContent = task.description;

    // AGREGAR TEXTO AL DIV

    divTaskContainer.appendChild(h3Title);

    divTaskContainer.appendChild(pDescription);

    // CONTENEDOR DE BOTONES

    const divTaskActions = document.createElement('div');

    divTaskActions.classList.add('task-actions');

    // BOTÓN ELIMINAR

    const buttonDelete = document.createElement('button');

    buttonDelete.classList.add('delete');

    buttonDelete.textContent = 'Eliminar';


    // Evento del botón eliminar
    buttonDelete.addEventListener('click', function () {

        deleteTaskElement(task);

    });

    // BOTÓN EDITAR

    const buttonEdit = document.createElement('button');

    buttonEdit.classList.add('edit');

    buttonEdit.textContent = 'Editar';


    // Evento del botón editar
    buttonEdit.addEventListener('click', function () {


        // Pedir nuevo título
        const newTitle = prompt("Editar título", task.title);


        // Pedir nueva descripción
        const newDescription = prompt("Editar descripción", task.description);


        // Validar si el título está vacío
        if (!newTitle.trim()) {

            alert("El título no puede quedar vacío");

            return;
        }


        // Actualiza los datos del objeto
        task.title = newTitle;

        task.description = newDescription;


        // Actualiza visualmente
        h3Title.textContent = newTitle;

        pDescription.textContent = newDescription;

    });

    // AGREGAR BOTONES

    divTaskActions.appendChild(buttonEdit);

    divTaskActions.appendChild(buttonDelete);

    // CREAR LI PRINCIPAL

    const li = document.createElement('li');

    li.classList.add('task-item');

    li.id = task.id;

    // AGREGAR DIVS AL LI

    li.appendChild(divTaskContainer);

    li.appendChild(divTaskActions);

    // RETORNAR EL LI

    return li;
}

// FUNCIÓN PARA ELIMINAR TAREA

function deleteTaskElement(task) {


    // Busca la tarea por ID
    const li = document.getElementById(task.id);


    // Si existe la elimina
    if (li) {

        li.remove();

    }
}