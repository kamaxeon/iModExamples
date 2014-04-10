Ejemplos con OneWire
====================

Este página es común y es lo que se debe hacer antes de ejecutar cualquier ejemplo de este tipo. 

El ejemplo está basado en un sensor de temperatura Dallas BS18B20

> Nota: Sólo es necesario hacerlo una vez.

## Escanear el bus

En consola debemos ejecutar lo siguiente:

```
[root@techbase ~]# imod scan onewire
iMod Tiger Engine [Version 1310250906]
iMod daemon not running
02:56:53,538 [main] INFO   - Starting iMod Tiger Engine Version 1310250906, Xml Config Version 1.2.53
02:57:15,230 [main] INFO   - Running Scanner... 
02:57:15,305 [main] INFO   - OneWire scanner initialization...
02:57:15,556 [main] INFO   - Running owserver client thread on ip: 0.0.0.0 port: 4304
02:57:15,565 [main] INFO   - Waiting for bus reset...
02:57:15,582 [main] INFO   - Trying to run OneWire scanner...
02:57:15,706 [main] INFO   - Scanning in progress. Please wait... 
02:57:15,715 [ONEWIRE(4304)] INFO   - Starting the scan on port: 4304 ip: 0.0.0.0
02:57:18,818 [ONEWIRE(4304)] INFO   - Found 1-Wire slave:  (id: 2876018F050000 type: THERMOMETER_DS18B20)
02:57:18,857 [ONEWIRE(4304)] INFO   - Add OneWire parameter 2876018F050000:temperature definition.
02:57:18,871 [ONEWIRE(4304)] INFO   - Add OneWire parameter 2876018F050000:temperature9 definition.
02:57:18,886 [ONEWIRE(4304)] INFO   - Add OneWire parameter 2876018F050000:temperature10 definition.
02:57:18,907 [ONEWIRE(4304)] INFO   - Add OneWire parameter 2876018F050000:temperature11 definition.
02:57:18,920 [ONEWIRE(4304)] INFO   - Add OneWire parameter 2876018F050000:temperature12 definition.
02:57:18,928 [ONEWIRE(4304)] INFO   - Close sensor detecting.
02:57:19,562 [main] INFO   - Exit scanner... 
02:57:19,581 [main] INFO   - Running Scanner... 
02:57:19,604 [main] INFO   - OneWire scanner initialization...
02:57:19,614 [main] INFO   - Running owserver client thread on ip: 0.0.0.0 port: 4304
02:57:19,621 [main] INFO   - Waiting for bus reset...
02:57:19,636 [main] INFO   - Trying to run OneWire scanner...
02:57:19,646 [main] INFO   - Scanning in progress. Please wait... 
02:57:19,654 [ONEWIRE(4304)] INFO   - Starting the scan on port: 4304 ip: 0.0.0.0
02:57:19,715 [ONEWIRE(4304)] INFO   - Found 1-Wire slave:  (id: 2876018F050000 type: THERMOMETER_DS18B20)
02:57:19,748 [ONEWIRE(4304)] INFO   - Add OneWire parameter 2876018F050000:temperature definition.
02:57:19,763 [ONEWIRE(4304)] INFO   - Add OneWire parameter 2876018F050000:temperature9 definition.
02:57:19,777 [ONEWIRE(4304)] INFO   - Add OneWire parameter 2876018F050000:temperature10 definition.
02:57:19,790 [ONEWIRE(4304)] INFO   - Add OneWire parameter 2876018F050000:temperature11 definition.
02:57:19,810 [ONEWIRE(4304)] INFO   - Add OneWire parameter 2876018F050000:temperature12 definition.
02:57:19,819 [ONEWIRE(4304)] INFO   - Close sensor detecting.
02:57:19,888 [main] INFO   - Exit scanner... 
02:57:19,931 [main] INFO   - Exiting

```

Nos genera el fichero [ONEWIREScan.xml](ONEWIREScan.xml) en */mnt/mtd/iMod/conf/*

La información de este fichero se usará para los ejemplos como base.

A continuación se definen los siguientes ejemplos:

[Primero](primero/README.md): Se configura para que guarde el valor de la temperatura, sólo guardando el último registro.

[Segundo](segundo/README.md): Exactamente igual que el anterior pero se activa la función de dataloger para recoger los valores cada n segundos en un csv

[Tercero](tercero): Difiere del segundo al guardar los datos en un base de datos SQLite