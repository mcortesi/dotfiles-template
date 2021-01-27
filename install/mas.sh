#!/usr/bin/env bash

# Automatically install purchased apps from the Mac App Store

if ! mas account > /dev/null 2>&1; then
    echo "App Store not signed in. Pleas Sign in and retry"
fi

# Mac App Store apps to install
apps=(
    "Kindle:405399194"
    "Telegram:747648890"
    "1Password:443987910"
    "WhatsApp:1147396723"
    "Notability:736189492"
    "Bear:1091189122"
    "Be Focused:973134470"
    "Microsoft To Do:1274495053"
    "Slack:803453959"
    "Pocket:568494494"
)

for app in "${apps[@]}"; do
    name=${app%%:*}
    id=${app#*:}

    echo -e "Attempting to install $name"
    mas install "$id"
done
