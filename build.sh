#!/bin/bash
echo "NOTE: A working Japanese Locale (ja_JP.utf8) is required." &&
echo "Building nss-patch.npa..." &&
LANG=ja_JP.utf8 &&
wine nipa.exe -c nss-de nss-patch.npa &&
echo "Done!" || echo "Error!"
