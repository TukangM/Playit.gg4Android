#!/system/bin/sh

# Variables
MODDIR=${0%/*}

# Teks ASCII
ui_print "  ____    _                   _   _          ____    ____            _                              _                                __    __   _          _           _ "
ui_print " |  _ \  | |   __ _   _   _  (_) | |_       / ___|  / ___|     ___  | |__    _ __    ___     ___   | |_     _   _   _ __     ___    / _|  / _| (_)   ___  (_)   __ _  | |"
ui_print " | |_) | | |  / _` | | | | | | | | __|     | |  _  | |  _     / __| | '_ \  | '__|  / _ \   / _ \  | __|   | | | | | '_ \   / _ \  | |_  | |_  | |  / __| | |  / _` | | |"
ui_print " |  __/  | | | (_| | | |_| | | | | |_   _  | |_| | | |_| |   | (__  | | | | | |    | (_) | | (_) | | |_    | |_| | | | | | | (_) | |  _| |  _| | | | (__  | | | (_| | | |"
ui_print " |_|     |_|  \__,_|  \__, | |_|  \__| (_)  \____|  \____|    \___| |_| |_| |_|     \___/   \___/   \__|    \__,_| |_| |_|  \___/  |_|   |_|   |_|  \___| |_|  \__,_| |_|"
ui_print "                      |___/"

# Creating directory for playit
ui_print "Creating directory for playit"
mkdir -p "/data/local/playit"

# Copying ubuntu folder to /data/local/playit
ui_print "Copying Ubuntu 22.04 base folder to /data/local/playit"
ui_print "Should not take long to copy"
cp -r "$MODDIR/ubuntu" "/data/local/ubuntu"

# Rename ubuntu folder to playit
ui_print "Renaming Ubuntu folder to playit"
mv "/data/local/ubuntu" "/data/local/playit"

# Edit nameserver or DNS in /data/local/playit/etc/resolv.conf
ui_print "Editing nameserver in /data/local/playit/etc/resolv.conf"
echo "nameserver 8.8.8.8" >> "/data/local/playit/etc/resolv.conf"
echo "nameserver 1.1.1.1" >> "/data/local/playit/etc/resolv.conf"

ui_print "you can setup your playit now with command start-setup-plyit, then run a command start-playit then connect your account with playit.gg"
ui_print "you can use Ubuntu 22.04 as normal without gui. I suggest not using Ubuntu 22.04, not excessively so as not to burden Playit"