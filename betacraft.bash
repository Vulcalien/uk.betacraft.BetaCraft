#!/bin/bash

# needed for Discord RP
# source: https://github.com/flathub/com.discordapp.Discord/wiki/Rich-Precense-(discord-rpc)#flatpak-applications
for i in {0..9}; do
    test -S $XDG_RUNTIME_DIR/discord-ipc-$i || ln -sf {app/com.discordapp.Discord,$XDG_RUNTIME_DIR}/discord-ipc-$i;
done

exec java -jar /app/share/launcher.jar
