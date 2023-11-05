/* ## Ejercicio 1
1. Crear una tabla llamada "Clientes" con las columnas: id (entero, clave primaria), nombre (texto) y email (texto).*/
CREATE TABLE public.Clientes (
		id SERIAL int primary key,
		nombre varchar (20) NOT NULL,
	 	email varchar (50))

/*2. Insertar un nuevo cliente en la tabla "Clientes" con id=1, nombre="Juan" y email="juan@example.com".*/

insert into public.clientes (id, nombre, email)
values (1, 'Juan', 'juan@example.com');

/*3.	Actualizar el email del cliente con id=1 a "juan@gmail.com".*/

Update public.clientes
Set email= 'juan@gmail.com'
Where id=1

/*4.Eliminar el cliente con id=1 de la tabla "Clientes".*/

Delete from public.clientes
Where id=1;

/*5.	Crear una tabla llamada "Pedidos" con las columnas: id (entero, clave primaria), cliente_id (entero, clave externa referenciando a la tabla "Clientes"), producto (texto) y cantidad (entero).*/

CREATE TABLE public.Pedidos (
    id  int primary key,
    cliente_id int,
    producto varchar (50),
    cantidad int,
    Foreign Key (cliente_id) references public.clientes (id)
    );

/*6.Insertar un nuevo pedido en la tabla "Pedidos" con id=1, cliente_id=1,
producto="Camiseta" y cantidad=2.*/

insert into public.pedidos (id, cliente_id,producto, cantidad)
2 values (1,1,'Camiseta', 2)

/*7.Actualizar la cantidad del pedido con id=1 a 3.*/
update public.pedidos
set cantidad = 3
where id = 1

/*8.Eliminar el pedido con id=1 de la tabla "Pedidos".*/
Delete from public.pedidos
Where id=1;

/*9.Crear una tabla llamada "Productos" con las columnas: id (entero, clave
primaria), nombre (texto) y precio (decimal).*/

CREATE TABLE public.Productos (
    id  int primary key,
    nombre varchar (50),
    precio decimal
    )

/*10	Insertar varios productos en la tabla "Productos" con diferentes valores.*/

insert into public.productos (id, nombre, precio)
values (1,'Ibm 385', 1000,20)

insert into public.productos (id, nombre, precio)
values (2,'Spectrum48', 1200,50)

insert into public.productos (id, nombre, precio)
values (3,'Comodore', 1200,50)

insert into public.productos (id, nombre, precio)
values (4,'HP', 1800.50)

/*11.	Consultar todos los clientes de la tabla "Clientes".*/
SELECT * FROM public.clientes
ORDER BY id ASC

/*12.Consultar todos los pedidos de la tabla "Pedidos" junto con los nombres de los clientes correspondientes.*/

SELECT * FROM public.clientes
Left Join public.pedidos
On public.pedidos.id = public.clientes.id

/*13.	Consultar los productos de la tabla "Productos" cuyo precio sea mayor a $50.*/
SELECT * FROM public.productos
where precio > 50

/*14.	Consultar los pedidos de la tabla "Pedidos" que tengan una cantidad mayor o igual a 5.*/

SELECT * FROM public.pedidos
where cantidad >= 5

/*15.Consultar los clientes de la tabla "Clientes" cuyo nombre empiece con la letra "A".*/

SELECT * FROM public.clientes
   where nombre Ilike 'J%'

/*16.Realizar una consulta que muestre el nombre del cliente y el total de pedidos realizados por cada cliente.*/

SELECT clientes.nombre, pedidos.cantidad
FROM public.clientes
left join  public.pedidos 
on public.pedidos.id = public.clientes.id

/*17.Realizar una consulta que muestre el nombre del producto y la cantidad total de pedidos de ese producto.*/

SELECT producto,cantidad
FROM public.pedidos

/*18. Agregar una columna llamada "fecha" a la tabla "Pedidos" de tipo fecha.*/
alter table public.pedidos
add Fecha date

/*19.	Agregar una clave externa a la tabla "Pedidos" que haga referencia a la tabla "Productos" en la columna "producto".*/
alter TABLE public.Pedidos
add Foreign Key (cliente_id) references public.producto (id)
 	
/*20.	Realizar una consulta que muestre los nombres de los clientes, los nombres de los productos y las cantidades de los pedidos donde coincida la clave externa.*/

SELECT clientes.nombre, pedidos.producto, pedidos.cantidad
FROM public.clientes 
left join  public.pedidos 
on public.pedidos.id = public.clientes.id




