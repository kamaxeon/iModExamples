## Objetivo

Alamacenar en un [CSV](data.csv), situado en */mnt/data/SQL/*,  el histórico de temperaturas, de los diversos valores que hay se ha obtado por temperature9 que nos devuelve un entero con la temperatura.

El tiempo de refresco entre lectura son 10 segundos sin gap.

Se continua manteniendo la base de datos con el valor del último cambio y la fecha del mismo.

## Desarrollo

Modificamos el fichero [ONEWIREScan.xml](../ONEWIREScan.xml) y lo transformamos en [MainConfig.xml](MainConfig.xml) y reiniciamos el iMod

## Comprobación

Miramos el fichero que hemos creado


```
[root@techbase ~]# cat /mnt/data/SQL/data.csv 
2014-04-10 03:53:00
Time; THERM_ONEWIRE - THERMOMETER_DS18B20
2014-04-10 03:53:13; ??
2014-04-10 03:53:23; 20
2014-04-10 03:53:33; 20
2014-04-10 03:53:43; 20
2014-04-10 03:53:53; 20
2014-04-10 03:54:03; 20
2014-04-10 03:54:13; 20
2014-04-10 03:54:23; 20
2014-04-10 03:54:33; 20
2014-04-10 03:54:43; 20
2014-04-10 03:54:53; 20
2014-04-10 03:55:03; 20
2014-04-10 03:55:13; 20
2014-04-10 03:55:23; 20
2014-04-10 03:55:33; 20
2014-04-10 03:55:43; 20
2014-04-10 03:55:53; 20
...
[root@techbase ~]# sqlite3 /mnt/ramdisk/modbus.db
SQLite version 3.7.5
Enter ".help" for instructions
Enter SQL statements terminated with a ";"
sqlite> .headers on
sqlite> select name, value, timeEnter from dane WHERE id='THERM_ONEWIRE';
Name|Value|timeEnter
THERMOMETER_DS18B20|20|2014-04-10 03:53:15

```

Ahora puedes continuar con el [tercero][0] :-)

[0]: ../tercero