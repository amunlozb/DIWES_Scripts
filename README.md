# Proyecto Biblioteca - Scripts de Gestión de Libros

Este repositorio contiene una serie de scripts para interactuar con una API de gestión de libros. Los scripts están diseñados para realizar tareas específicas, como listar libros, obtener detalles de un libro, crear, actualizar, eliminar y reservar libros. A continuación, se detallan los scripts y sus funciones:

## Scripts

### 1. Script de Listado de Libros

• Utiliza el token JWT obtenido para realizar una solicitud GET al endpoint que lista
todos los libros.

```bash
./listar_libros.sh
```
### 2. Script de Obtención de Detalles de Libro

• Realiza una solicitud GET para obtener los detalles de un libro específico por su ID.

```bash
./detalles_libro.sh
```
### 3. Script de Creación de Libro

• Crea un nuevo libro utilizando una solicitud POST.

```bash
./crear_libro.sh
```

### 4. Script de Actualización de Libro

• Actualiza un libro existente usando una solicitud PUT.

```bash
./crear_libro.sh
```

### 5. Script de Eliminación de Libro

• Elimina un libro por su ID utilizando una solicitud DELETE.

```bash
./eliminar_libro.sh
```

### 6. Script de Reserva de Libro

• Realiza una reserva para un libro específico.

```bash
./reservar_libro.sh
```
