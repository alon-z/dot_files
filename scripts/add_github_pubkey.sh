#!/bin/bash
read -s -p "Enter password for github: " hub_pass
curl -u "alonikomax:$hub_pass" --data '{"title":"$(hostname -s)_pubkey","key":"'"$(cat ~/.ssh/id_rsa.pub)"'"}' https://api.github.com/user/keys
