/* ## Ejercicio 3*/
/*1.Crea una tabla llamada "Ciudades" con las columnas: "id" (entero, clave
primaria), "nombre" (texto) y "pais" (texto).*/

Create table public.Ciudades  (
id  int primary key,
nombre varchar (50),
pais varchar (15) 
	)

/*2.Inserta al menos tres registros en la tabla "Ciudades".*/

Insert into public.Ciudades (id, nombre, pais)
Values (1, 'Madrid','España') , (2, 'Paris','Francia') ,
 (3, 'Londres','Great Britain') , (4, 'Istambul','Turquia')

/*3.	Crea una foreign key en la tabla "Usuarios" que se relacione con la columna "id" de la tabla "Ciudades".*/

alter MibasedeDatos.Usuarios
add Foreign Key (id) references public.Ciudades (id)


/*4. Realiza una consulta que muestre los nombres de los usuarios junto con el
nombre de su ciudad y país (utiliza un LEFT JOIN).*/

SELECT usuarios.nombre, ciudades.producto, ciudades.pais
FROM public.usuarios 
left join  public.ciudades 
on public.usuarios.id = public.ciudades.id

/*5.Realiza una consulta que muestre solo los usuarios que tienen una ciudad
asociada (utiliza un INNER JOIN).*/


SELECT usuarios.nombre, ciudades.producto, ciudades.pais
FROM public.usuarios 
inner join  public.ciudades 
on public.usuarios.id = public.ciudades.id
where public.ciudades ILIKE 'P%' 






