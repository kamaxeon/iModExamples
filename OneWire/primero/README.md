## Objetivo

Alamacenar en la base de datos modbus.db el último dato de lectura, de los diversos valores que hay se ha obtado por temperature9 que nos devuelve un entero con la temperatura.

El tiempo de refresco entre lectura son 10 segundos sin gap.

En caso de no cambiar la temperatura no escribirá nuevos valores en la base de datos.

## Desarrollo

Modificamos el fichero [ONEWIREScan.xml](../ONEWIREScan.xml) y lo transformamos en [MainConfig.xml](MainConfig.xml) y reiniciamos el iMod

## Comprobación

Hacemos un select en la base de datos para ver la fecha y el valor de la última lectura del dispositivo.


```
[root@techbase ~]# sqlite3 /mnt/ramdisk/modbus.db
SQLite version 3.7.5
Enter ".help" for instructions
Enter SQL statements terminated with a ";"
sqlite> .headers on
sqlite> select name, value, timeEnter from dane WHERE id='THERM_ONEWIRE';
Name|Value|timeEnter
THERMOMETER_DS18B20|20|2014-04-10 03:31:49
```