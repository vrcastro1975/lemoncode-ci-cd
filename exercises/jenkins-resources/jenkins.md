Tarea Jenkins
Por Víctor Castro Gálvez
vrcastro1975@gmail.com

Arrancar Jenkins:
Primero montamos la imagen a partir del Dockerfile que se nos facilita.
Para ello, nos vamos a la carpeta:
exercises/jenkins-resources
y hacemos el build de la imagen:
```bash
docker build -t jenkins-gradle -f gradle.Dockerfile .
```
Una vez que tenemos construida la imagen, ejecutamos un contenedor a partir de ella:

```bash
docker run -d -p 8080:8080 -p 50000:50000 --name jenkins-gradle-local jenkins-gradle
```

Ahora hay que hemos levantado el contenedor de Jenkins, nos vamos en nuestro navegador a:
```bash
localhost:8080
```

Ahora se nos pedirá una contraseña de desbloqueo. Para averiguarla, escribimos:
```bash
docker logs jenkins-gradle-local
```

Ahora copiamos la contraseña, que estará en este apartado:
Please use the following password to proceed to installation:

y volvemos al navegador y la pegamos en su lugar para finalizar la instalación de Jenkins.

Ya tenemos Jenkins funcionando en local.


