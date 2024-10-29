# Tarea Jenkins
## Por Víctor Castro Gálvez


Arrancar Jenkins:
Primero montamos la imagen a partir del Dockerfile que se nos facilita.
Para ello, nos vamos a la carpeta:
exercises/jenkins-resources
y haríamos el build de la imagen:
```bash
docker build -t jenkins-gradle -f gradle.Dockerfile .
```
Observación importante:
Hay un problema con la imagen base de jenkins que viene en el enunciado (jenkins/jenkins:lts), que trae OpenJDK 17. La versión 6.6.1. de Gradle NO acepta Java/OpenJDK 17, por lo que obtenía un error en la pipeline. Por tanto, en lugar de usar la imagen base del enunciado, vamos a usar esta otra: `jenkins/jenkins:lts-jdk11`. En lugar de construir la imagen anterior, vamos a hacer el build de la imagen en un segundo dockerfile que hemos adaptado:

```bash
docker build -t jenkins-gradle -f gradle2.Dockerfile .
```

Una vez que tenemos construida la imagen correcta, ejecutamos un contenedor a partir de ella:

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

Ahora, una vez introducido nombre de usuario y contraseña y aceptada la url que va a usar Jenkins (localhost:8080), voy a instalar los plugins que marca el enunciado: `docker` y `docker-pipeline`. Para ello, me voy a `Manage Jenkins` y selecciono `Plugins`, `Available plugins`, en el buscador pongo `docker` y selecciono `Docker` y `Docker Pipeline`. Clico en el botón `Install` y, una vez instalados los plugins, clico en `Go
back to the top page`. (Si clicamos en Restart Jenkins, el contenedor se queda bloqueado).

Ahora ya podemos empezar a trabajar con Jenkins. Selecciono `New item` o `Create a job` y lo nombro como `ejercicio1`. Selecciono "Pipeline" y clico en "OK".

En Descripción pongo `Ejercicio 1 de Jenkins.`
En `Pipeline / Definition` escojo `Pipeline script from SCM`.
En "SCM" selecciono "Git".
En Repository URL pongo: `https://github.com/vrcastro1975/lemoncode-ci-cd.git`
En `Credentials` no pongo nada, porque el repositorio es público.
En `"Branch Specifier"` pongo: `*/main`
Y en `Script Path` pongo: `exercises/jenkins-resources/Exercise1-Jenkinsfile`
Por último, clico en `"Save"`
Ahora clico en `"Build Now"`

Y, si todo ha ido bien, obtendríamos el output que dejo en el repositorio (`#1.txt`).