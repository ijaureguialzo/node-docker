# node-docker

Entorno de desarrollo para programación con [Node.js](https://nodejs.org/) en [Docker](https://www.docker.com).

## Puesta en marcha

1. Instalar [Docker Desktop](https://www.docker.com/products/docker-desktop/).
2. En Windows, instalar [Scoop](https://scoop.sh) usando PowerShell:

   ```powershell
   Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
   Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
   ```

   Y después instalar los comandos necesarios:

   ```powershell
   scoop install make
   ```

3. Clonar este repositorio:

   ```shell
   git clone https://github.com/ijaureguialzo/node-docker.git
   ```

   > Si el comando anterior no funciona, habrá que [instalar Git](https://git-scm.com/downloads) en el sistema.

4. En un terminal, situarse en la carpeta `node-docker` (o si se ha renombrado, la que contenga este
   archivo `README.md` que estás leyendo):

   ```shell
   cd node-docker
   ```

5. Construir el contenedor:

   ```shell
   make build
   ```

   > Este proceso solo hay que lanzarlo una vez (salvo que queramos reconfigurar algo).

## Acceso al contenedor

Para iniciar sesión en el contenedor:

```shell
make workspace
```

> El contenedor solo puede leer y escribir en la carpeta `proyectos` de este repositorio. Ese será el directorio de
> trabajo a utilizar.

## Acceso como usuario root al contenedor

Si es necesario, se puede iniciar sesión como `root`:

```shell
make workspace-root
```

## Configurar la versión de Node.js

Copiar el fichero `env-example` a `.env` y editar su contenido:

En macOS y Linux:

```shell
cp env-example .env
```

En Windows:

```shell
copy env-example .env
```

## Referencias

- [node - Official Image | Docker Hub](https://hub.docker.com/_/node/)
