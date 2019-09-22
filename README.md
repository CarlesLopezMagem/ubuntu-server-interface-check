# ubuntu-server-interface-check

Aquest és un repositori per controlar amb l'eina cron si una interfice està caiguda i executa una comanda

## Afegir control a una interficie

```bash
chmod +x check_interface.sh
echo "*/5 * * * * root $(pwd)/check_interface.sh INTERFICE COMMAND >> /var/log/check_interfaces 2>&1" << /etc/cron.d/check_interfaces"
```

## Afegir control a una ip

```bash
chmod +x check_ip.sh
echo "*/5 * * * * root $(pwd)/check_ip.sh IP COMMAND >> /var/log/check_ip 2>&1" << /etc/cron.d/check_ip"
```
