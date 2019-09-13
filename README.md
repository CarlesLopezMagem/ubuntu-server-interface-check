# ubuntu-server-interface-check

Aquest és un repositori per controlar amb l'eina cron si una interfice està caiguda i executa una comanda

## Afegir control a una interficie

```bash
chmod +x check_interface.sh
echo "*/5 * * * * root $(pwd)/check_interface.sh INTERFICE COMMAND" << /etc/cron.d/check_interfaces
```
