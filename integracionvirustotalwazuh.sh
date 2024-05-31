#!/bin/bash

# Actualizar la lista de paquetes
echo "actualizando paquetes"
sudo apt-get update > /dev/null

# Instalar jq
echo "instalndo jq"
sudo apt-get -y install jq > /dev/null
echo "jq se ha instalado correctamente"

# Configurar permisos y mover el archivo al directorio deseado
sudo mv "$PWD/remove-threat.sh" /var/ossec/active-response/bin/
sudo chmod 750 /var/ossec/active-response/bin/remove-threat.sh
sudo chown root:wazuh /var/ossec/active-response/bin/remove-threat.sh
echo "permisos cambiados"
echo "reiniciando"
# Reiniciar el servicio wazuh-agent
sudo systemctl restart wazuh-agent

echo "reiniciado y configurado"

exit 0


