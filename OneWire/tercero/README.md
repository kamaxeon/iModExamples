## Objetivo

Alamacenar en una base de datos, situado en */mnt/data/SQL/iModDataLogger.db*,  el histórico de temperaturas, de los diversos valores que hay se ha obtado por temperature9 que nos devuelve un entero con la temperatura.

El tiempo de refresco entre lectura son 10 segundos sin gap.

Se continua manteniendo la base de datos con el valor del último cambio y la fecha del mismo.


## Desarrollo

Si no tenemos la base de datos de pruebas, debe crearla, pulsa [aquí][0] para ver como hacerlo.

Modificamos el fichero [ONEWIREScan.xml](../ONEWIREScan.xml) y lo transformamos en [MainConfig.xml](MainConfig.xml) y reiniciamos el iMod

## Comprobación

Esperamos un rato y hacemos un select en la base de datos para ver los valores que ha almacenado.


```
[root@techbase ~]# sqlite3 /mnt/data/SQL/iModDataLogger.db
-- Loading resources from /root/.sqliterc
SQLite version 3.7.5
Enter ".help" for instructions
Enter SQL statements terminated with a ";"
sqlite> SELECT * FROM record ORDER BY datetime DESC LIMIT 10;
id|name|label|datetime|value
59|THERMOMETER_DS18B20|Contador OneWire|2014-Apr-10 21:14:54:948|20
58|THERMOMETER_DS18B20|Contador OneWire|2014-Apr-10 21:14:44:939|20
57|THERMOMETER_DS18B20|Contador OneWire|2014-Apr-10 21:14:34:880|20
56|THERMOMETER_DS18B20|Contador OneWire|2014-Apr-10 21:14:24:847|20
55|THERMOMETER_DS18B20|Contador OneWire|2014-Apr-10 21:14:15:41|20
54|THERMOMETER_DS18B20|Contador OneWire|2014-Apr-10 21:14:05:439|20
53|THERMOMETER_DS18B20|Contador OneWire|2014-Apr-10 21:13:54:821|20
52|THERMOMETER_DS18B20|Contador OneWire|2014-Apr-10 21:13:44:814|20
51|THERMOMETER_DS18B20|Contador OneWire|2014-Apr-10 21:13:34:822|20
50|THERMOMETER_DS18B20|Contador OneWire|2014-Apr-10 21:13:24:805|20
sqlite> .exit
[root@techbase ~]# sqlite3 /mnt/ramdisk/modbus.db 
-- Loading resources from /root/.sqliterc
SQLite version 3.7.5
Enter ".help" for instructions
Enter SQL statements terminated with a ";"
sqlite> SELECT name, value, timeEnter FROM dane WHERE id='THERM_ONEWIRE_LOGGER';
Name|Value|timeEnter
THERMOMETER_DS18B20|20|2014-04-10 21:05:15

```

[0]: ../../db/SQLite