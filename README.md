# Integración de Wazuh con VirusTotal para borrado de archivos maliciosos

La integración de Wazuh con VirusTotal permite que Wazuh envíe automáticamente archivos y hashes de archivos a VirusTotal para su análisis. Esto añade una capa adicional de seguridad al permitir que las amenazas potenciales sean verificadas contra una base de datos extensa y constantemente actualizada de firmas de malware. La información obtenida de VirusTotal puede ser utilizada por Wazuh para generar alertas, informes y tomar medidas automáticas basadas en los resultados del análisis. Con esta configuración cuando detecte un archivo maliciosos nos lo borrara.

## Conteido del repositorio

Para facilitar la configuración de esta integración en los clientes, he desarrollado una serie de scripts automatizados que simplifican el proceso de configuración. 
- **integracionvirustotalwazuh.sh**: Archivo que instala los requisitos que se necesita y coloca el archivo remove-trash.sh en la carpeta adecuada con los permisos adecuados en Linux.
- **remove-trash.sh**: Archivo de configuración de virustotal que es el encargado de detectar los archvivos maliciosos en Linux.
- **integracionvirustotalwazuh.bat**: Archivo que instala los requisitos que se necista y coloca el archivo remove-trash.py en la carpeta adecuada con los permisos adecuados en Windows
- **remove-trash.py**: Archivo de configuración de virustotal que es el encargado de detectar los archvivos maliciosos en Windows.
## Instrucciones de uso
### Ubuntu

Para utilizar los scripts, simplemente sigue estos pasos:

1. **Clona el repositorio**:
    ```bash
    git clone https://github.com/jooonw2/Integracionvirustotalwazuh
    ```
2. **Ejecuta el script de configuración**:
    ```bash
    ./integracionvirustotalwazuh.sh
    ```
### Ubuntu con ansible
He creado tambien otra manera de implementarlo con Ansible
1. **Clona el repositorio**:
    ```bash
    git clone https://github.com/jooonw2/Integracionvirustotalwazuh
    ```
2. **Mover paylook**:
    Mover paylook a la caarpeta /etc/ansible/
2. **Ejecuta el script de configuración**:
    ```bash
    ./virustotalplaybook.sh
    ```
### Windows

1. **Clona el repositorio**:
    ```bash
    Invoke-WebRequest -Uri "https://github.com/jooonw2/Integracionvirustotalwazuh.git" -OutFile "Integracionvirustotalwazuh"
    ```
2. **Ejecuta el script de configuración**:
    ```bash
    ./integracionvirustotalwazuh.bat
    ```
## Requisitos previos
No se requieron requisitos previos ni en Ubuntu ni en Windows mas que tener instalado wazuh cliente y en el servidor tener configurado el modulo de virustotal en wazuh.
## Contribuciones

Las contribuciones son bienvenidas. Si tienes sugerencias, encuentras errores o deseas añadir nuevas funcionalidades, por favor abre un issue o un pull request en el repositorio.
