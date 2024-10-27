# Tarea Jenkins
## Por Víctor Castro Gálvez


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
`Please use the following password to proceed to installation:`

y volvemos al navegador y la pegamos en su lugar para finalizar la instalación de Jenkins.

Ya tenemos Jenkins funcionando en local.

Ahora, selecciono `"New item"` y lo nombro como `"ejercicio1"`. Selecciono "Pipeline" y clico en "OK".

En Descripción pongo "Ejercicio 1 de Jenkins."
En `Pipeline / Definition` escojo `"Pipeline script from SCM"`.
En "SCM" selecciono "Git".
En Repository URL pongo: `https://github.com/vrcastro1975/lemoncode-ci-cd.git`
En `Credentials` no pongo nada, porque el repositorio es público.
En `"Branch Specifier"` pongo: `*/main`
Y en `Script Path` pongo: `exercises/jenkins-resources/Exercise1-Jenkinsfile`
Por último, clico en `"Save"`
Ahora clico en `"Build Now"`
