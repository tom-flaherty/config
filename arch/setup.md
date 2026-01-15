# Installing

## Connect to WiFi

```bash
iwctl
station wlan0 scan
station wlan0 get-networks
station wlan0 connect SSID-NAME
exit
ping ping.archlinux.com
```

**Important!** Update your keys
```bash
pacman-key --refresh-keys
```
Optionally, sync pacman
```bash
pacman -Sy
```

## Install 
```bash
archinstall
```

recommend to keep everything on US english

## ADD YOUR SETTINGS HERE

# Post install

## Manual

### Locale Gen

```bash
sudo nano /etc/locale.gen
```
Uncomment `en_GB.UTF-8 UTF-8`.
```bash
sudo locale-gen
```
Reboot. Open Settings -> System -> Region & Language. Set to English (United Kingdom). Log out and log back in. 
Settings -> Keyboard. Update keyboard settings

### Git & SSH Keygen

```bash
ssh-keygen  -t ed25519 -C "your.email@address.com"
cat ~/.ssh/id_ed25519.pub
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
```

## Installs

```bash
sudo pacman -Syu \
    firefox \
    steam \
    mission-center \
    git \
    ghostty \
    fzf \
    helix \
    rustup \
    cmake \
    python-pip \
    uv \
    --noconfirm

rustup install stable

cargo install bottom
```
