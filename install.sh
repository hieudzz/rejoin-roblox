#!/bin/bash
# Auto install Rejoin Roblox Tool

pkg update -y && pkg upgrade -y
pkg install bash -y

curl -s -o rejoin_roblox.sh https://raw.githubusercontent.com/<tên_user_github>/rejoin-roblox/main/rejoin_roblox.sh
chmod +x rejoin_roblox.sh
bash rejoin_roblox.sh
