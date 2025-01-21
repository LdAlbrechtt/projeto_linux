# Projeto linux - Automação com script 
### Atividade do programa de bolsas da CompassUOL

## Descrição
Servidor Nginx com script de monitoramento automático do status do serviço em ambiente Linux

## Tecnologias
- WSL
- Ubuntu
- Shell script
- nginx

## funcionalidades
- Servidor Nginx
- Validar se o serviço está online
- Gerar logs com status do serviço (ONLINE ou OFFLINE)
- Automatizar a execução do script a cada 5 minutos usando Crontab

## Como usar
### Requisitos
- Sistema Linux configurado
  ```bash
  wsl --install -d Ubuntu
  ```
- Servidor Nginx instalado
  ```bash
  sudo apt update && sudo apt upgrade
  sudo apt install nginx
  sudo systemctl enable nginx
  sudo systemctl start nginx
  ```
  
### Passos
1. **Clone o repositório**  
   Use o comando abaixo para clonar o repositório:
   ```bash
   git clone https://github.com/seu-usuario/projeto_linux.git
   ```

2. **Acesse o diretorio do projeto**

navegue ate o diretorio do projeto clonado:
```bash
cd projeto_linux
```

3. **Configure o Crontab**

  Adicione o script ao Crontab para execução automática a cada 5 minutos:
```bash
crontab -e
```

  Insira a ultima linha do arquivo crontab_conf.txt abaixo no Crontab e salve:
```bash
*/5 * * * * /bin/bash /home/SEU_USUARIO/projeto_linux/script_nginx.sh
```

4. **Verifique os logs**

   Os logs serão gerados no diretório logs/ do projeto. Para monitorar os logs em tempo real, use:
```bash
tail -f logs/online.log
tail -f logs/offline.log
```

## Arquivos importantes
- script_nginx.sh: Script principal para monitorar o Nginx.
- crontab_conf.txt: Configuração do agendamento do script.
- logs/: Diretório onde são armazenados os logs.

## Autor 
- Lucas Albrecht 








