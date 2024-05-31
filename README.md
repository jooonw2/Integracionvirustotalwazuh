# Integración de Wazuh con VirusTotal

La integración de Wazuh con VirusTotal permite que Wazuh envíe automáticamente archivos y hashes de archivos a VirusTotal para su análisis. Esto añade una capa adicional de seguridad al permitir que las amenazas potenciales sean verificadas contra una base de datos extensa y constantemente actualizada de firmas de malware. La información obtenida de VirusTotal puede ser utilizada por Wazuh para generar alertas, informes y tomar medidas automáticas basadas en los resultados del análisis.

## Conteido del repositorio

Para facilitar la configuración de esta integración en los clientes, he desarrollado una serie de scripts automatizados que simplifican el proceso de configuración. 
- **InstAgentWin.bat**:
- **InstAgentWin.bat**:
- - **InstAgentWin.bat**:

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
### Windows
## Requisitos previos
No se requieron requisitos previos ni en Ubuntu ni en Windows mas que tener instalado wazuh.
## Contribuciones

Las contribuciones son bienvenidas. Si tienes sugerencias, encuentras errores o deseas añadir nuevas funcionalidades, por favor abre un issue o un pull request en el repositorio.
