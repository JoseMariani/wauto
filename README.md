## Version para Ubuntu 
### Paso a paso
Para instalar se van a necesitar los siguientes datos:
1. Contraseña Mysql
2. Nombre de la instancia, necesario para DBs y Carpetas.
3. Número máximo de numero sde Whatsapp por cuenta.
4. Número máximo de asistentes.
5. Domínio/SubDominio del FrontEnd (Ejemplo: app.tudominio.com)
6. Domínio/SubDominio del Backend (Ejemplo: api.tudominio.com)
7. Puerto del Frontend, geralmente para la primera es 3000. para las otras 3001, 3002...
8. Puerto del Backend, para la primera 4000. para las otras 4001, 4002...
9. Puerto para Phpmyadmin, se recomienda usar el 8081 en adelante 8081, y las otras 8001, 8002...
El acceso a phpmyadmin es por IP del servidor, ex. http://111.111.111.111:8000
10. Puerto de MYSQL, para la primera es 3306, y las otras 3307, 3308...

## INSTALACION
USAR solamente para la primera instalcion:

```bash
sudo apt install -y git && git clone https://github.com/JoseMariani/wauto.git instalador && sudo chmod -R 777 ./instalador && cd ./instalador && sudo ./install_primaria
```

USAR PARA INSTALAR INSTANCIAS ADICIONALES:
```bash
cd && cd ./instalador && sudo ./install_instancia
```
## Recursos que se instalan ademas del sistema: 
- instala Nginx.
- Instala Mysql.
- Instala en Docker Phpmyadmin (isolados)
- Configura los dominios con certificados de seguridad
- Atualiza las instanacias a la ultima version.
## Accesos para despues de la instalacion:

Al terminar la instalacion puede acceder al admin panel con los datos siguientes: 
user:admin@tudominio.com
pass:admin