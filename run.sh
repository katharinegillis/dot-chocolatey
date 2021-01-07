#!/usr/bin/env bash

PKG_PATH=$2

sudo cp $PKG_PATH/scripts/install-chocolatey.ps1 /mnt/c/install-chocolatey.ps1
powershell.exe -File C:\\install-chocolatey.ps1
sudo rm /mnt/c/install-chocolatey.ps1