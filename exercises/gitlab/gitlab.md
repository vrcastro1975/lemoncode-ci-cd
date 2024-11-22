# **Tarea GitLab**
## Por Víctor Castro Gálvez

## Instalando GitLab
Arrancar GitLab:
Antes de nada, nos iremos a /etc/docker y crearemos el fichero `daemon.json` (si no está ya creado) y añadiremos esta línea:  
{"insecure-registries" : ["gitlab.local:5001", "gitlab.local:8888"]}.  
Una vez hecho esto, iríamos a nuestro host y, en `/etc/hosts`, añadiríamos `gitlab.local` con nuestra IP local.  
(recordemos que para averiguar nuestra IP local tendríamos que usar `ip a l`).  
En mi caso, la IP local es 192.168.0.25, por lo que la línea a añadir quedaría así:  
`192.168.0.25   gitlab.local`  

Primero montamos el entorno usando el fichero suministrado `gitlab_environment.sh`.  
Para ello, nos vamos a la carpeta:  
exercises/gitlab  
y escribiríamos esto en un terminal:  
`sudo ./gitlab_environment.sh`  
Ahora escogeríamos la primera opción: `1. Docker environment`  
Una vez escogida la ejecución con Docker, elegiríamos la primera opción que nos aparece: `1. Build and run gitlab`  
Esta es la salida por terminal de todo el proceso:  

```
1 - Docker environment
2 - Vagrant environment
### Choose the Gitlab environment ###
1
1 - Build and run gitlab
2 - Stop gitlab
3 - Start gitlab
4 - Destroy gitlab
### Choose your option and press enter ###
1
### Preparing gitlab environment ###

WARN[0000] /home/victor/Documents/_2023-03. DEVOPS BOOTCAMP LEMONCODE/MATERIAL BOOTCAMP 4/trabajos/lemoncode-ci-cd/exercises/gitlab/gitlab/docker-compose.yml: the attribute `version` is obsolete, it will be ignored, please remove it to avoid potential confusion 
[+] Running 26/3
 ✔ gitlab Pulled                                                                                                                                   153.6s 
 ✔ portainer Pulled                                                                                                                                 11.9s 
 ✔ gitlabrunner Pulled                                                                                                                              20.9s 
[+] Running 10/10
 ✔ Network bootcamp_network              Created                                                                                                     0.1s 
 ✔ Network gitlab_default                Created                                                                                                     0.1s 
 ✔ Volume "gitlab_portainer_data"        Created                                                                                                     0.0s 
 ✔ Volume "gitlab_gitlab-config"         Created                                                                                                     0.0s 
 ✔ Volume "gitlab_gitlab-logs"           Created                                                                                                     0.0s 
 ✔ Volume "gitlab_gitlab-data"           Created                                                                                                     0.0s 
 ✔ Volume "gitlab_gitlab-runner-config"  Created                                                                                                     0.0s 
 ✔ Container gitlab                      Started                                                                                                     2.8s 
 ✔ Container portainer                   Started                                                                                                     2.8s 
 ✔ Container gitlab-runner               Started                                                                                                     0.8s 

### Registering gitlab runner ###
hostname	"cbacca3b19de"
ip	"172.17.0.2"
message	"Hello World!"
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (56) Recv failure: Connection reset by peer
Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (56) Recv failure: Connection reset by peer
Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (56) Recv failure: Connection reset by peer
Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (56) Recv failure: Connection reset by peer
Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (56) Recv failure: Connection reset by peer
Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (56) Recv failure: Connection reset by peer
Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (56) Recv failure: Connection reset by peer
Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (56) Recv failure: Connection reset by peer
Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (56) Recv failure: Connection reset by peer
Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (56) Recv failure: Connection reset by peer
Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (56) Recv failure: Connection reset by peer
Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (56) Recv failure: Connection reset by peer
Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (56) Recv failure: Connection reset by peer
Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (56) Recv failure: Connection reset by peer
Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (56) Recv failure: Connection reset by peer
Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (56) Recv failure: Connection reset by peer
Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (56) Recv failure: Connection reset by peer
Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (56) Recv failure: Connection reset by peer
Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (56) Recv failure: Connection reset by peer
Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (56) Recv failure: Connection reset by peer
Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (56) Recv failure: Connection reset by peer
Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (56) Recv failure: Connection reset by peer
Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (56) Recv failure: Connection reset by peer
Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (56) Recv failure: Connection reset by peer
Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (56) Recv failure: Connection reset by peer
Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (56) Recv failure: Connection reset by peer
Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (56) Recv failure: Connection reset by peer
Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (56) Recv failure: Connection reset by peer
Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (56) Recv failure: Connection reset by peer
Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (56) Recv failure: Connection reset by peer
Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (56) Recv failure: Connection reset by peer
Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (56) Recv failure: Connection reset by peer
Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (56) Recv failure: Connection reset by peer
Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0  3027    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (22) The requested URL returned error: 502
HTTP/1.1 502 Bad Gateway
Server: nginx
Date: Thu, 21 Nov 2024 09:00:51 GMT
Content-Type: text/html; charset=utf-8
Content-Length: 3027
Connection: keep-alive
Cache-Control: no-cache, no-store, max-age=0, must-revalidate
Expires: Fri, 01 Jan 1990 00:00:00 GMT
Pragma: no-cache

Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0  3027    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (22) The requested URL returned error: 502
HTTP/1.1 502 Bad Gateway
Server: nginx
Date: Thu, 21 Nov 2024 09:00:56 GMT
Content-Type: text/html; charset=utf-8
Content-Length: 3027
Connection: keep-alive
Cache-Control: no-cache, no-store, max-age=0, must-revalidate
Expires: Fri, 01 Jan 1990 00:00:00 GMT
Pragma: no-cache

Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0  3027    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (22) The requested URL returned error: 502
HTTP/1.1 502 Bad Gateway
Server: nginx
Date: Thu, 21 Nov 2024 09:01:01 GMT
Content-Type: text/html; charset=utf-8
Content-Length: 3027
Connection: keep-alive
Cache-Control: no-cache, no-store, max-age=0, must-revalidate
Expires: Fri, 01 Jan 1990 00:00:00 GMT
Pragma: no-cache

Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0  3027    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (22) The requested URL returned error: 502
HTTP/1.1 502 Bad Gateway
Server: nginx
Date: Thu, 21 Nov 2024 09:01:06 GMT
Content-Type: text/html; charset=utf-8
Content-Length: 3027
Connection: keep-alive
Cache-Control: no-cache, no-store, max-age=0, must-revalidate
Expires: Fri, 01 Jan 1990 00:00:00 GMT
Pragma: no-cache

Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0  3027    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (22) The requested URL returned error: 502
HTTP/1.1 502 Bad Gateway
Server: nginx
Date: Thu, 21 Nov 2024 09:01:11 GMT
Content-Type: text/html; charset=utf-8
Content-Length: 3027
Connection: keep-alive
Cache-Control: no-cache, no-store, max-age=0, must-revalidate
Expires: Fri, 01 Jan 1990 00:00:00 GMT
Pragma: no-cache

Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0  3027    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (22) The requested URL returned error: 502
HTTP/1.1 502 Bad Gateway
Server: nginx
Date: Thu, 21 Nov 2024 09:01:16 GMT
Content-Type: text/html; charset=utf-8
Content-Length: 3027
Connection: keep-alive
Cache-Control: no-cache, no-store, max-age=0, must-revalidate
Expires: Fri, 01 Jan 1990 00:00:00 GMT
Pragma: no-cache

Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0  3027    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (22) The requested URL returned error: 502
HTTP/1.1 502 Bad Gateway
Server: nginx
Date: Thu, 21 Nov 2024 09:01:21 GMT
Content-Type: text/html; charset=utf-8
Content-Length: 3027
Connection: keep-alive
Cache-Control: no-cache, no-store, max-age=0, must-revalidate
Expires: Fri, 01 Jan 1990 00:00:00 GMT
Pragma: no-cache

Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0  3027    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (22) The requested URL returned error: 502
HTTP/1.1 502 Bad Gateway
Server: nginx
Date: Thu, 21 Nov 2024 09:01:26 GMT
Content-Type: text/html; charset=utf-8
Content-Length: 3027
Connection: keep-alive
Cache-Control: no-cache, no-store, max-age=0, must-revalidate
Expires: Fri, 01 Jan 1990 00:00:00 GMT
Pragma: no-cache

Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0  3027    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (22) The requested URL returned error: 502
HTTP/1.1 502 Bad Gateway
Server: nginx
Date: Thu, 21 Nov 2024 09:01:31 GMT
Content-Type: text/html; charset=utf-8
Content-Length: 3027
Connection: keep-alive
Cache-Control: no-cache, no-store, max-age=0, must-revalidate
Expires: Fri, 01 Jan 1990 00:00:00 GMT
Pragma: no-cache

Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0  3027    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (22) The requested URL returned error: 502
HTTP/1.1 502 Bad Gateway
Server: nginx
Date: Thu, 21 Nov 2024 09:01:36 GMT
Content-Type: text/html; charset=utf-8
Content-Length: 3027
Connection: keep-alive
Cache-Control: no-cache, no-store, max-age=0, must-revalidate
Expires: Fri, 01 Jan 1990 00:00:00 GMT
Pragma: no-cache

Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0  3027    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (22) The requested URL returned error: 502
HTTP/1.1 502 Bad Gateway
Server: nginx
Date: Thu, 21 Nov 2024 09:01:41 GMT
Content-Type: text/html; charset=utf-8
Content-Length: 3027
Connection: keep-alive
Cache-Control: no-cache, no-store, max-age=0, must-revalidate
Expires: Fri, 01 Jan 1990 00:00:00 GMT
Pragma: no-cache

Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
  0     0    0     0    0     0      0      0 --:--:--  0:00:01 --:--:--     0
HTTP/1.1 302 Found
Server: nginx
Date: Thu, 21 Nov 2024 09:01:46 GMT
Content-Type: text/html; charset=utf-8
Content-Length: 0
Connection: keep-alive
Cache-Control: no-cache
Content-Security-Policy: 
Location: http://localhost:8888/users/sign_in
Permissions-Policy: interest-cohort=()
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Frame-Options: SAMEORIGIN
X-Gitlab-Meta: {"correlation_id":"01JD6Z9H0Y5P3XPFYCW5RYQ0SM","version":"1"}
X-Permitted-Cross-Domain-Policies: none
X-Request-Id: 01JD6Z9H0Y5P3XPFYCW5RYQ0SM
X-Runtime: 0.065904
X-Ua-Compatible: IE=edge
X-Xss-Protection: 1; mode=block
Strict-Transport-Security: max-age=63072000
Referrer-Policy: strict-origin-when-cross-origin

HTTP/1.1 200 OK
Server: nginx
Date: Thu, 21 Nov 2024 09:01:48 GMT
Content-Type: text/html; charset=utf-8
Content-Length: 0
Connection: keep-alive
Cache-Control: max-age=0, private, must-revalidate
Content-Security-Policy: 
Etag: W/"08a7ea0a17d78766a55324a2176750a7"
Link: </assets/application_utilities-05e2012e2a742859447cb4d3ec92e80ea1e1bd54011a11e0a33c62e41f8bec72.css>; rel=preload; as=style; type=text/css,</assets/application-7649badc780fc4e44c1b7063c6153b3c216a5f6f0d7907eed714fac2a39ede73.css>; rel=preload; as=style; type=text/css,</assets/highlight/themes/white-5d96a14c91e48ab1e99718ce1647378867a0495323d816f3a9704562a4e2ce7c.css>; rel=preload; as=style; type=text/css
Permissions-Policy: interest-cohort=()
Set-Cookie: preferred_language=en; path=/
Set-Cookie: _gitlab_session=8178f6a9262c77ce5fa1233c155182a5; path=/; expires=Thu, 21 Nov 2024 11:01:48 GMT; HttpOnly
Vary: Accept
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Frame-Options: SAMEORIGIN
X-Gitlab-Meta: {"correlation_id":"01JD6Z9H384KTR0Z7G58EAT897","version":"1"}
X-Permitted-Cross-Domain-Policies: none
X-Request-Id: 01JD6Z9H384KTR0Z7G58EAT897
X-Runtime: 1.599094
X-Ua-Compatible: IE=edge
X-Xss-Protection: 1; mode=block
Strict-Transport-Security: max-age=63072000
Referrer-Policy: strict-origin-when-cross-origin

Connected!
Registering gitlab runner
Runtime platform                                    arch=amd64 os=linux pid=26 revision=853330f9 version=16.5.0
Running in system-mode.                            
                                                   
WARNING: Support for registration tokens and runner parameters in the 'register' command has been deprecated in GitLab Runner 15.6 and will be replaced with support for authentication tokens. For more information, see https://docs.gitlab.com/ee/ci/runners/new_creation_workflow 
Registering runner... succeeded                     runner=QK8zo6Mi
Runner registered successfully. Feel free to start it, but if it's running already the config should be automatically reloaded!
 
Configuration (with the authentication token) was saved in "/etc/gitlab-runner/config.toml"  
```  

Observación sobre los errores 502 que aparecen:  

En estos párrafos que aparecen en el proceso anterior:  
```
Waiting Gitlab is ready
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0  3027    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (22) The requested URL returned error: 502
HTTP/1.1 502 Bad Gateway
Server: nginx
Date: Thu, 21 Nov 2024 09:01:31 GMT
Content-Type: text/html; charset=utf-8
Content-Length: 3027
Connection: keep-alive
Cache-Control: no-cache, no-store, max-age=0, must-revalidate
Expires: Fri, 01 Jan 1990 00:00:00 GMT
Pragma: no-cache
```
El error se debe a que me había olvidado crear el fichero `/etc/docker/daemon.json` y añadir la línea `{"insecure-registries" : ["gitlab.local:5001", "gitlab.local:8888"]}`  
  
Ahora seguimos con el proceso de instalación de GitLab en local. Si escribimos `docker container ls`, obtenemos:  

```
CONTAINER ID   IMAGE                                 COMMAND                  CREATED          STATUS                    PORTS                                                                                                                                                                                       NAMES
c21f624204b3   gitlab/gitlab-runner:alpine-v16.5.0   "/usr/bin/dumb-init …"   12 minutes ago   Up 12 minutes                                                                                                                                                                                                         gitlab-runner
683a74c73511   portainer/portainer-ce:latest         "/portainer"             12 minutes ago   Up 12 minutes             8000/tcp, 9443/tcp, 0.0.0.0:9000->9000/tcp, :::9000->9000/tcp                                                                                                                               portainer
671987ac4b8d   gitlab/gitlab-ee:16.5.1-ee.0          "/assets/wrapper"        12 minutes ago   Up 12 minutes (healthy)   80/tcp, 0.0.0.0:5001->5001/tcp, :::5001->5001/tcp, 0.0.0.0:8443->8443/tcp, :::8443->8443/tcp, 443/tcp, 0.0.0.0:8888->8888/tcp, :::8888->8888/tcp, 0.0.0.0:2222->22/tcp, [::]:2222->22/tcp   gitlab
```
  
Ahora, para acceder a GitLab en nuestro local, iríamos a nuestro navegador y pondríamos esta url:  
`gitlab.local:8888`  
En la pantalla de login, escogeríamos:  
Username: `root`  
Password: `Gitl@bPass`  
  
Y ya estaríamos listos para empezar a trabajar.  
  
## Ejercicio 1. CI/CD de una aplicación spring.  
Una vez con el entorno GitLab levantado, y correctamente logueados, hacemos click en "Create a project" y, a continuación, "Create blank project".  
Como nombre del proyecto, elegiremos "springapp". Com grupo, dejaremos "root", pues no es necesario crear un grupo para este ejemplo. En "Visibility Level", dejamos "Private", por ejemplo, y clicamos sobre "Create project".  
Ya tenemos el proyecto creado en GitLab. Se nos da un aviso de que no podremos hacer push o pull usando SSH hasta que añadamos una clave SSH a nuestro perfil. Por tanto, la añadiremos. Hacemos click en "Add SSH key".  
Si clicamos ahora en "Add new key", se nos abre una caja de texto para que peguemos ahí la key SSH. En este momento, nos vamos a un terminal y creamos una key SSH:
```bash
ssh-keygen -t ecdsa -b 521
```
Nos pedirá una passphrase que guardaremos en lugar seguro.  
```
Your identification has been saved in /home/victor/.ssh/id_ecdsa
Your public key has been saved in /home/victor/.ssh/id_ecdsa.pub
```
Ya tenemos el par de claves. Ahora, para que no nos pida contraseña cada vez que usemos la clave, vamos a añadir nuestra clave al ssh agent. Para ello:
```bash
eval 'ssh-agent'
ssh-add ~/.ssh/id_ecdsa
```
Ahora vamos a \/~.ssh y copiamos el contenido del fichero `.pub` y lo pegamos en la caja de texto anterior de GitLab.  
En "Expiration date" podemos dejar un año. Por último, clicamos en "Add key". Con esto ya podemos hacer pull y push. Volvemos, por tanto a la "Home page".  
Ahora, en "Projects", seleccionamos nuestro proyecto (Administrator / springapp).  
Ahora vamos a subir el contenido de la carpeta "spingapp" a nuestro repositorio en GitLab. Para ello, en un terminal nos vamos a la carpeta "springapp" y tecleamos `git init`. Ahora vamos a conectar el repositorio local con el de GitLab. Para ello, escribiremos `git remote add origin gitlab.local:8888/root/springapp`.  
Una vez hecho esto, subiremos el contenido que tenemos en local al repositorio de GitLab:  
```bash
git add .
git commit -m "Subida del código de la aplicación springapp"
git push -u origin main
```
Pero me da un error porque se intenta conectar al puerto 22 por ssh, y al estar usando GitLab mediante Docker, el puerto es el 2222 mapeado al puerto 22 del contenedor. Por tanto:  
```bash
git remote set-url origin ssh://git@gitlab.local:2222/root/springapp.git
```
Ahora vamos a probar a conectarnos al servidor SSH de GitLab en el puerto 2222:
```bash
ssh -T git@gitlab.local -p 2222
```
Y este es el resultado:
```
ED25519 key fingerprint is SHA256:ZaBBUnxDaTfgHpTVEh5Pp+CP+/OrYqoqegdF7ZuX0/E.
This key is not known by any other names
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added '[gitlab.local]:2222' (ED25519) to the list of known hosts.
Welcome to GitLab, @root!
```
Y ahora repetimos el proceso de push:  
```bash
git push -u origin main
```
Ahora ya podemos hacer pull y push sin promblemas, pero como hay objetos en el repositorio GitLab que no están en local, aparece el siguiente "warning":  
```
git push -u origin main
To ssh://gitlab.local:2222/root/springapp.git
 ! [rejected]        main -> main (fetch first)
error: failed to push some refs to 'ssh://gitlab.local:2222/root/springapp.git'
hint: Updates were rejected because the remote contains work that you do
hint: not have locally. This is usually caused by another repository pushing
hint: to the same ref. You may want to first integrate the remote changes
hint: (e.g., 'git pull ...') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.
```
Para resolverlo, haremos un pull primero y luego subiremos todo con un pull:  
```bash
git pull origin main
```
Como hay conflictos, mergearemos con la opción por defecto:  
```bash
git config pull.rebase false
```
Ahora subimos todo:  
```bash
git add .
git commit -m "Conflicts solved"
git push -u origin main --force
```
Como me sigue dando problemas, y como sé que en el repositorio en GitLab no hay nada de valor, ya que los ficheros válidos están en mi local, voy a recurrir a una solución más drástica:  
```bash
git pull --rebase origin main
git push origin main
```
Ahora ya SÍ aparece el contenido del repositorio local (aplicación "springapp") en el repositorio de GitLab.  
  
Vamos ahora, pues, a continuar con el ejercicio. Vamos a crear la pipeline que describe el enunciado. Para ello, nos iremos a `Build / Pipelines `, pero antes vamos a crear el fichero `.gitlab-ci.yml` en el raíz del repositorio. Para ello nos iremos a nuestro repositorio local y lo construiremos ahí. Luego lo subiremos con un push, ahora que sabemos que ya funciona todo perfectamente.

El código del fichero `.gitlab-cu.yml` sería el siguiente:  
```yaml
stages:
  - maven:build
  - maven:test
  - docker:build
  - deploy

variables:
  MAVEN_OPTS: "-Dmaven.repo.local=$CI_PROJECT_DIR/.m2/repository"

maven:build:
  image: maven:3.6.3
  stage: maven:build
  script:
    - mvn clean package
  artifacts:
    paths:
      - target/*.jar

maven:test:
  image: maven:3.6.3
  stage: maven:test
  script:
    - mvn verify

docker:build:
  image: docker:latest
  stage: docker:build
  script:
    - docker build -t springapp:latest .
  only:
    - main

deploy:
  image: docker:latest
  stage: deploy
  services:
    - docker:dind
  script:
    - docker run -d -p 8080:8080 springapp:latest
  only:
    - main
```
Ahora vamos a subir el nuevo fichero desde nuestro local a GitLab (por comodidad, subiremos todo):  
```bash
git add .
git commit -m "Subimos el fichero de la pipeline"
git push origin main
```
Si nos vamos a `Build / Pipelines`, podremos ver la pipeline ejecutándose. En este caso, nos ha dado error. Vamos a intentar ver por qué y solucionarlo. Si accedemos al `job` y clicamos en él, podemos ver el output del mismo.  

Parece ser que no se puede determinar la versión de `Java` utilizada. Vamos a modificar temporalmente la pipeline para que se nos diga qué versión de Java se está usando:  
```yaml
maven:build:
  image: maven:3.6.3
  stage: maven:build
  script:
    - java -version
    - mvn clean package
```
Haremos un push con los cambios y, cuando se lance la pipeline, verificaremos esto en el log.  
```bash
git add .
git commit -m "Modificamos maven:build para ver en el log la versión de Java usada"
git push origin main
```
Tampoco nos aclara nada, porque la pipeline vuelve a fallar antes de mostrar la versión. Por tanto, buscamos en el fichero `pom.xml` y vemos que usa Java 8. Entonces, vamos a cambiar el fichero `.gitlab-ci.yml` para que se use Java 8 en todos los stages que usen `maven`:  
```yaml
maven:build:
  image: maven:3.6.3-jdk-8
  stage: maven:build
  script:
    - mvn clean package
```
```yaml
maven:test:
  image: maven:3.6.3-jdk-8
  stage: maven:test
  script:
    - mvn verify
```
Y volvemos a hacer push:  
```bash
git add .
git commit -m "Cambiamos la imagen de maven para usar Java 8"
git push origin main
```
Con esto **se arregla el problema y la pipeline pasa correctamente.** Este es un `extracto` del final de los logs:  
```
2024-11-21T17:57:55.051326095Z time="2024-11-21T17:57:55.051111464Z" level=warning msg="Binding to an IP address without --tlsverify is deprecated. Startup is intentionally being slowed down to show this message" host="tcp://0.0.0.0:2375"
2024-11-21T17:57:55.051378618Z time="2024-11-21T17:57:55.051157701Z" level=warning msg="Please consider generating tls certificates with client validation to prevent exposing unauthenticated root access to your network" host="tcp://0.0.0.0:2375"
2024-11-21T17:57:55.051388746Z time="2024-11-21T17:57:55.051173276Z" level=warning msg="You can override this by explicitly specifying '--tls=false' or '--tlsverify=false'" host="tcp://0.0.0.0:2375"
2024-11-21T17:57:55.051398105Z time="2024-11-21T17:57:55.051212738Z" level=warning msg="Support for listening on TCP without authentication or explicit intent to run without authentication will be removed in the next release" host="tcp://0.0.0.0:2375"
2024-11-21T17:58:10.058381052Z failed to load listeners: can't create unix socket /var/run/docker.sock: device or resource busy
*********
Using locally found image version due to "if-not-present" pull policy
Using docker image sha256:00403c9778a2070d4f8ea42d39094b43aa5b489bfdf3738d44928a86f188e606 for docker:latest with digest docker@sha256:bec82cb05983f12a14d8f169b00748f4ded8573f4da5f1d15d375b6a2470289f ...
Preparing environment 00:00
Running on runner-jcmdxvx1-project-1-concurrent-0 via c21f624204b3...
Getting source from Git repository 00:02
Fetching changes with git depth set to 20...
Reinitialized existing Git repository in /builds/root/springapp/.git/
Checking out 8fb6f2d9 as detached HEAD (ref is main)...
Removing target/
Skipping Git submodules setup
Downloading artifacts 00:01
Downloading artifacts for maven:build (15)...
Downloading artifacts from coordinator... ok        host=gitlab.local:8888 id=15 responseStatus=200 OK token=64_z6FHv
Executing "step_script" stage of the job script 00:01
Using docker image sha256:00403c9778a2070d4f8ea42d39094b43aa5b489bfdf3738d44928a86f188e606 for docker:latest with digest docker@sha256:bec82cb05983f12a14d8f169b00748f4ded8573f4da5f1d15d375b6a2470289f ...
$ docker run -d -p 8080:8080 springapp:latest
cbacca3b19de115b7514ff3958e251477f147d84d8f0564b70402e8d81326885
Job succeeded
```
  
Si nos vamos a `http://localhost:8080`, podemos ver esto:
```
hostname	"cbacca3b19de"
ip	"172.17.0.2"
message	"Hello World!"
```
  
## Ejercicio 2. Crear un usuario nuevo y probar que no puede acceder al proyecto anteriormente creado.
* Añadirlo con el role guest, comprobar que acciones puede hacer.
* Cambiar a role reporter, comprobar que acciones puede hacer.
* Cambiar a role developer, comprobar que acciones puede hacer.
* Cambiar a role maintainer, comprobar que acciones puede hacer.

Acciones a probar:

* Commit
* Ejecutar pipeline manualmente
* Push and pull del repo
* Merge request
* Acceder a la administración del repo

Lo primero que vamos a hacer es añadir al nuevo usuario. Para ello, nos iremos al `Admin area` (hay que desactivar la opción `New navigation`). Una vez dentro del Admin area, iremos a `Users / New user`. 
*Name: testuser
*Username: testuser
*Email: testuser@testuser@local
Como no podemos establecer una contraseña, creamos el usuario y, acto seguido, lo editamos y ponemos la siguiente contraseña:  
*Password: usertest
Y, a continuación, clicamos en "Save changes".  
  
Ya tenemos al usuario de pruebas. Ahora vamos a añadirlo al proyecto `springapp` con diferentes roles. Nos vamos, pues a nuestro proyecto y clicamos en `Activity / Members / Invite members`. Ahora introducimos el nombre de usuario del usuario de pruebas `testuser` y le asignamos el rol `Guest`. El dato de expiración no lo cumplimentamos por tratarse de una prueba.  

Pero tenemos un serio problema: En esta versión de GitLab, **NO** se nos permite indicar la clave del usuario, sino que se le mandará por correo para que el usuario la cambie. Por tanto, nos vemos en la obligación de cambiar la contraseña de una manera menos decorosa:  
Entramos en el contenedor de Gitlab:  
```bash
docker exec -it gitlab bash
```
Abrimos la consola de Rails de GitLab:  
```bash
gitlab-rails console
```
(Tardará en cargar unos 50 segundos más o menos)  
Una vez en la consola de Rails de GitLab, buscamos el usuario y le cambiamos la contraseña (le ponemos, por ejemplo, `usertest`. Hay que copiar y pegar el bloque de código entero):  
```ruby
user = User.find_by(username: 'testuser')
user.password = 'usertest'
user.password_confirmation = 'usertest'
user.save!
```
Para verificar si se ha seteado bien la contraseña, escribiremos esto en la consola:  
```ruby
puts user.valid_password?('usertest')
```
(Si lo hemos hecho bien, la consola deberá devolver `true`).  
Pero no hemos acabado aún. Para poder impersonar al nuevo usuario `testuser`, deberemos desbloquear la expiración de la contraseña, y para ello, sin salirnos del contenedor de GitLab, ni de la consola de Rails de GitLab, copiaremos y pegaremos en ella este nuevo bloque de código:  
```ruby
user = User.find_by(username: 'testuser')
user.password_expires_at = nil
user.save!
```
Con esto nos aseguramos que la contraseña se desmarca como expirada y ahora sí podremos impersonar al usuario (Overview / Users / Impersonate).  
  
Ya tenemos el usuario creado e incluido en el proyecto. Ahora probaremos su funcionalidad.  
Nos vamos a local y nos logueamos en git como ese usuario de prueba:  
```bash
git config --global user.name "testuser"
git config --global user.email "testuser@local"
```
## Empezamos las pruebas:
### Commit
Hacemos un pequeño cambio en el repositorio, como poner un espacio de más al final de algún fichero, de modo que haya algún cambio que comitear.
Ahora intentaremos hacer un push con este usuario:
```bash
git add .
git commit -m "Probando testuser como Guest"
```
(No se nos permite)  

### Ejecutar pipeline manualmente
Tras impersonar al usuario en GitLab, vamos a `CI/CD / Pipelines` y clicamos en `Run pipeline`.
(Tampoco nos lo permite)

### Push and pull
Tras hacer en un paso anterior un pequeño cambio en el repositorio, como poner un espacio de más al final de algún fichero, de modo que haya algún cambio que comitear, intentamos hacer push y pull.
Ahora intentaremos hacer un push con este usuario:
```bash
git push origin main
git pull origin main
```
(No nos lo permite hacer push, pero sí pull)

### Merge request
Nos vamos a "Your work / Merge requests" y vemos que no nos da la opción de crear una merge request.
(No se nos permite)  

### Administración del repositorio
Tampoco nos deja realizar actividades administrativas.
(No se nos permite).
  
Para cambiar el rol del usuario de prueba, dejamos de impersonarlo para volver al administrador (Stop impersonating), vamos ahora como administrador a nuestro repositorio "springapp". Una vez en él, nos vamos a "Project information / Members" y, en el usuario "testuser", cambiamos el desplegable `Gest` y seleccionamos la siguiente opción: `Reporter`. Con este nuevo rol, repetimos de nuevo las pruebas. Una vez acabadas las pruebas con este rol, repetiríamos de nuevo las pruebas con los roles `developer` y, finalmente, con el rol `mantainer`.  
  
Para no repetir cuatro veces lo mismo, aquí se muestra el resultado en modo tabla:  
  
| **Acción**                | **Guest** | **Reporter** | **Developer** | **Maintainer** |
|---------------------------|-----------|--------------|---------------|----------------|
| Commit                    | no        | no           | sí            | sí             |
| Ejecutar pipeline manual  | no        | no           | sí            | sí             |
| Push and pull             | Pull: sí  | Pull: sí     | Push/Pull: sí | Push/Pull: sí  |
| Merge request             | no        | sí (sólo ver)| sí            | sí             |
| Administración del repo   | no        | no           | no            | sí             |
