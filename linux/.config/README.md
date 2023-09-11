# Setup for Linux 

*This assumes you will copy the `.config` folder into your Linux home path and then install all the deps.

1. To install fish run:

```
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish
```

then add fish as main shell:

```
chsh -s /usr/bin/fish
```
*This could be different, run `which fish` to see the right path to run with chsh -s*

2. Then to install starship run:

```
curl -sS https://starship.rs/install.sh | sh
```
