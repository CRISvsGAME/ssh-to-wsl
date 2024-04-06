# CRISvsGAME

## SSH to WSL

### Windows PowerShell

```
New-NetFirewallRule -DisplayName 'SSH Inbound' -Protocol TCP -LocalPort 22
netsh interface portproxy add v4tov4 `
listenport=22 `
listenaddress=0.0.0.0 `
connectport=22 `
connectaddress=(wsl hostname -I).Split(' ')[0].Trim()
```

### Ubuntu WSL

```
sudo apt update
sudo apt upgrade
sudo apt install openssh-server
```
