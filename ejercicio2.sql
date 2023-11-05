/* ## Ejercicio 2
/*1. Crea una base de datos llamada "MiBaseDeDatos".*/
MiBaseDeDatos*/

/*2. Crea una tabla llamada "Usuarios" con las columnas: "id" (entero, clave
primaria), "nombre" (texto) y "edad" (entero).*/

Create table public.Usuarios  (
id  serial int primary key,
3	nombre varchar (50),
5	edad int
6	)

/*3. Inserta dos registros en la tabla "Usuarios".*/

Insert into public.usuarios (id, nombre, edad)
Values (1, 'Pedro',15)
Insert into public.usuarios (id, nombre, edad)
Values (2, 'Jaime',11)

/*4.Actualiza la edad de un usuario en la tabla "Usuarios".*/

Update public.usuarios
Set edad = 25
Where edad = 15;

/* 5.Elimina un usuario de la tabla "Usuarios".*/

Delete from public.usuarios
Where nombre = 'Jaime'



