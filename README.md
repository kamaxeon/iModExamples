iModExamples
============

Este repositorio contiene una serie de ejemplos de uso con un dispositivo de techbase llamado iMod.

## Organización

Se crea una carpeta por cada tipo y dentro de ellas hay ejemplos que van creciendo en nivel.

## Configuración del iMod

La configuración de todo iMod reside en el fichero MainConfig.xml dentro del directorio */mnt/mtd/iMod/config*

## Reiniciar el iMod

Sólo tenemos que ejecutar en consola

```
[root@techbase ~]# imod start
iMod Tiger Engine [Version 1310250906]
iMod daemon not running
Starting up. Please wait...
 INFO - Starting iMod Tiger Engine Version 1310250906, Xml Config Version 1.2.53
Created iMod daemon process: PID = 20336
iMod started
```

## Ver el log del iMod

Ejecutando

```
[root@techbase ~]# tail -f /mnt/data/logs/iMod.log
03:23:53,146 | INFO  | main | Starting iMod Tiger Engine Version 1310250906, Xml Config Version 1.2.53
03:24:23,154 | INFO  | main | ..STARTED..
03:24:24,182 | INFO  | main | ..STARTED..
03:24:27,403 | INFO  | OneWire | Connected with server on ip: 0.0.0.0 port: 4304
03:24:28,520 | INFO  | OneWire | Server directory cache parameter: 30s.
03:24:29,386 | INFO  | OneWire | Server stable cache parameter: 30s.
03:24:29,576 | INFO  | OneWire | Server volatile cache parameter: 60s.
03:24:32,275 | INFO  | OneWire | Add iMod parameter: THERM_ONEWIRE id: 2876018F050000 type: THERMOMETER_DS18B20
03:24:33,444 | INFO  | Database_gateway | Creating and populating database: 10066ms

``` 

## Ejemplos:

[OneWire](OneWire/REAMDE.md): Ejemplos usando una conexión OneWire