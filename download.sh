#!/bin/bash

cd ..

urle () { [[ "${1}" ]] || return 1; local LANG=C i x; for (( i = 0; i < ${#1}; i++ )); do x="${1:i:1}"; [[ "${x}" == [a-zA-Z0-9.~-] ]] && echo -n "${x}" || printf '%%%02X' "'${x}"; done; echo; }
read -p "Username:" username
read -p "Password:" password
username=$(urle $username)
password=$(urle $password)
wget --post-data "username=$username&password=$password" 'https://download.is.tue.mpg.de/download.php?domain=cape&sfile=CAPE_dataset.zip.001' -O 'CAPE_dataset.zip.001'
wget --post-data "username=$username&password=$password" 'https://download.is.tue.mpg.de/download.php?domain=cape&sfile=CAPE_dataset.zip.002' -O 'CAPE_dataset.zip.002'
wget --post-data "username=$username&password=$password" 'https://download.is.tue.mpg.de/download.php?domain=cape&sfile=CAPE_dataset.zip.002' -O 'CAPE_dataset.zip.003'
wget --post-data "username=$username&password=$password" 'https://download.is.tue.mpg.de/download.php?domain=cape&sfile=CAPE_dataset.zip.002' -O 'CAPE_dataset.zip.004'
wget --post-data "username=$username&password=$password" 'https://download.is.tue.mpg.de/download.php?domain=cape&sfile=CAPE_dataset.zip.002' -O 'CAPE_dataset.zip.005'
wget --post-data "username=$username&password=$password" 'https://download.is.tue.mpg.de/download.php?domain=cape&sfile=CAPE_dataset.zip.002' -O 'CAPE_dataset.zip.006'
