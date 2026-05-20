
# PREGUNTAS FINALES:

1. ¿Qué pasará si un cliente de una red diferente intenta usar tu DNS?
+ Probablemente no funcionará para consultas recursivas si tu allow-recursion limita a la ACL confiables. Si tu listen-on está en la IP pública o el firewall permite acceso, podrían consultar solo si no restringes. (Revisa allow-recursion y listen-on en named.conf.options). 
2. ¿Por qué tenemos que permitir las consultas recursivas?
+ Para que tu DNS pueda resolver nombres que no conoce preguntando a otros servidores (hacer la búsqueda completa por el cliente). Si no permites recursión, solo responde por zonas autoritativas.
3. ¿El servidor DNS que acabas de montar es autoritativo? ¿Por qué?
+ Sí, es autoritativo para las zonas que declaraste como type master en named.conf.local (p. ej. tunombre.test), porque guarda los datos de la zona.
4. ¿Dónde podemos encontrar la directiva $ORIGIN y para qué sirve?
+ $ORIGIN aparece en archivos de zona para fijar el sufijo por defecto en los registros. Se usa en los ficheros de zona (archivo .dns) para no repetir el dominio completo en cada registro.
5. ¿Una zona es igual a un dominio?
+ No exactamente: una zona es la porción del espacio de nombres que un servidor administra. Un dominio puede corresponder a una zona, pero una zona puede dividirse (subzonas) o existir varias zonas delegadas.
6. ¿Cuántos servidores raíz existen?
+ Hay 13 conjuntos de servidores raíz (letras A–M), aunque físicamente existen muchísimos servidores distribuidos por todo el mundo detrás de esas 13 referencias.
7. ¿Qué es una consulta iterativa de referencia?
+ Es cuando un resolver pide a un servidor DNS que le diga quién es el siguiente servidor a preguntar (p.ej. pide referencias a servidores de nivel superior) hasta llegar al autoritativo.
8. En una resolución inversa, ¿a qué nombre se mapearía la dirección IP 172.16.34.56?
+ Se mapearía usando el dominio inverso 56.34.16.172.in-addr.arpa, y en el archivo de zona inversa se define un PTR que apunta al nombre del host correspondiente.