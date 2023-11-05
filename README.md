# Ginga NCL - Lua

## Introdução
Exemplos de aplicativos Ginga utilizando NCL e Lua. A máquina que roda os aplicativos é da Telemidia (verificar as referências para maiores informações).

## Docker

## Como executar

```bash

docker build -t telemidia-ginga .

docker run --name ginga -e DISPLAY=<X Server IP Address : PORT> -v <path/to>/examples:/work-dir/examples -it telemidia-ginga:latest bash

```

### Windows

Instalar [VcXsrv Windows X Server](https://sourceforge.net/projects/vcxsrv/)

## Capturas de Tela

## Licença

# Referências
1. https://github.com/TeleMidia/ginga
2. https://github.com/TeleMidia/nclua

