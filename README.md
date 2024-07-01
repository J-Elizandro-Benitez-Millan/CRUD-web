Para poder ambientar el CRUD es necesario usar una BD mysql, java 17 y js. agregare los script para la creacion de la BBDD

MI RETO:
Este es un pequeño CRUD realizado con Java Web, JavaScript, HTML y CSS, ademas de usar la base de datos MySQL, durante la realizacion de este proyecto
tuve algunos retos, principalmente el tiempo, debido que solo tenia cerca de 1 a 1:30 hrs para hacerlo durante las noches, y otro de los retos mas importantes
fue la parte del front end, ya que no es algo que practique, pero aprendi mucho durante la realizacion de este mismo, no solo de front end si no de toda la tecnologia como tal.

El proyecto se hizo de la siguiente manera:
se inicio por la ceracion de el Login y el Alta de Usuario, que fueron hechos en jsp (JavaServer Pages) los cuales me
permitirian combinar codigo de Java con HTML lo cual me ayudaria para procesar mis formularios e interactuar con la 
base de datos, que en este caso llame "Usuarios", gracias a esta implementacion pude correr y probar mi pagina web
con la ayuda de "apache tomcat" el cual procesa mi archivo .jsp y convertirlo en un "serverlet" este serverlet se compila y 
ejecuta como si fuese un servidor generando el contenido que ve el cliente.
Al crear los serverlet les di un "contexto" o tambien llamado "path context" el cual usaban para traslado en lugar de usar
las direcciones de carpetas reales.

Con Java lo utilice para mi cadena de conexion a la base de datos y para controlar a esta misma, se que es mala practica
introducir SQL Injection al codigo pero no tenia mucho tiempo para dedicarle lo siento, tambien hice las validaciones del cerrado de sesion, guardado de usuario y del inicio de sesion,  las funciones de JavaScript, son el alta, inicio de sesion y redireccionamiento de index, introduje dentro las funciones principales, como "coincidir contrasenas" cuando se realiza el alta del usuario.

Sin mas que agregar, espero sea de su agrado, cualquier duda o comentario estoy a la disposicion.
