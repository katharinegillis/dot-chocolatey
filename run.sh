#!/usr/bin/env bash

PKG_PATH=$2

if ! command -v choco.exe >/dev/null 2>&1; then
  sudo cp $PKG_PATH/scripts/install-chocolatey.ps1 /mnt/c/install-chocolatey.ps1
  powershell.exe -File C:\\install-chocolatey.ps1
  sudo rm /mnt/c/install-chocolatey.ps1
else
  choco.exe upgrade chocolatey -y
fi