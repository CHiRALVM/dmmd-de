#!/bin/bash
echo "NOTE: A working Japanese Locale (ja_JP.utf8) is required." &&
echo "Building nss.npa..." &&
LANG=ja_JP.utf8 &&
cp nss-de/dm*.nss nss &&
wine nipa.exe -cg nss nss.npa DramaticalMurder &&
echo "Done!" || echo "Error!"
