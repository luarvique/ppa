#!/bin/sh

curl -s --compressed "https://luarvique.github.io/ppa/openwebrx-plus.gpg" | gpg --dearmor | tee /etc/apt/trusted.gpg.d/openwebrx-plus.gpg >/dev/null
curl -s --compressed -o /etc/apt/sources.list.d/openwebrx-plus.list "https://luarvique.github.io/ppa/openwebrx-plus.list"
apt update
