Uso de SQLite
=============

## Base de datos genérica

Por defecto el dispositivo genera una base de datos en */mnt/ramdisk/modbus.db* que es la que se comunica con el modbux que genera iMod.

## Base de datos almacenar registros

Puede ser cualquiera pero a modo de ejemplo se ha creado una sencilla que sólo contiene una tabla, su ubicación estará en */mnt/data/SQL/iModDataLogger.db* 

Para crearla debemos hacer lo siguiente

```
[root@techbase ~]# sqlite3 /mnt/data/SQL/iModDataLogger.db
-- Loading resources from /root/.sqliterc
SQLite version 3.7.5
Enter ".help" for instructions
Enter SQL statements terminated with a ";"
sqlite> CREATE TABLE record(
   ...>    id INTEGER PRIMARY KEY   AUTOINCREMENT,
   ...>    name           CHAR(80),
   ...>    label          CHAR(80),
   ...>    datetime       CHAR(50),
   ...>    value          CHAR(30)
   ...> );
sqlite> .exit
```


## Truco 

Para no tener que activar siempre las cabeceras haciendo .headers ON, vamos a crear un fichero de configuración de SQLite en el directorio del usuario.

```
echo '.headers ON' > ~/.sqliterc
```