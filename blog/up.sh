#!/bin/bash
docker run --rm --name ghost -v $PWD/data/ghost/var/lib/ghost/content:/var/lib/ghost/content -e "url=https://sam.ink" -d ghost