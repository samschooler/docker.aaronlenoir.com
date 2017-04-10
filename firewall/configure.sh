#!/bin/bash
ufw default deny incoming
ufw default allow outgoing
ufw allow ssh
ufw allow http
ufw allow https
ufw deny from 146.185.133.247
