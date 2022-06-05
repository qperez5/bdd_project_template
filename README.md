## Prerequisitos

1. Asegurarse de tener instalada la libreria libffi-dev

   `sudo apt-get install libffi-dev`

2. Pyenv (https://github.com/pyenv/pyenv) : Herramienta para instalar y usar varias versiones de python en equipo.
Pyenv se instala usando el instalador automatico:
    Ejecutar `curl https://pyenv.run | bash`
    Seguir las instrucciones en https://github.com/pyenv/pyenv#set-up-your-shell-environment-for-pyenv (para bash)

  - `pyenv versions` para ver las versiones instaladas de python
  - `pyenv install -l` para ver las versiones disponibles para instalar, usualment solo querras instalar versiones que empiezan con un numero como: 3.10.4
  - `pyenv install 3.10.4` para instalar python version 3.10.4
  - `pyenv local <version>` para usar una version concreta de python en el directorio actual (normalmente haras esto en la carpeta raiz de un proyecto).
  - `pyenv global <version>` para usar una version de python en todo el sistema
  - Otros comandos: https://github.com/pyenv/pyenv/blob/master/COMMANDS.md

3. Virtualenv (https://pypi.org/project/virtualenv/) Herramienta para configurar entornos aislados de librerias y sus dependencias en python.
  Para instalar virtualenv: 
- Despues de haber instalado y/o seleccionado la version deseada de python usando pyenv ejecutar:
      `pip install virtualenv`
- Para crear un entorno virtual para la carpeta de proyecto actual:
    `virtualenv venv`
- Para activar el entorno virtual en la carpeta `venv`: `source venv/bin/activate`

## Inicializacion de la carpeta de proyecto:
Resumen de todo lo anterior (ver pasos de instalacion de cada uno de los prerequisitos).
  - `pyenv local <version>`
  - `virtualenv venv`
  - `source venv/bin/activate`
  - `pip install -r requirements.txt` (ver fichero ejemplo)

## Uso de Jenkins
El repositorio incluye un fichero Jenkinsfile para definir un build pipeline.

El servidor jenkins que ejecute este pipeline ha de tener:
- Docker
- Docker pipeline plugin
- Docker plugin
- Allure Jenkins Plugin
