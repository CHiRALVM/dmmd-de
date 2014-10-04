#!/bin/bash
echo "Building nss-patch.npa" &&
LANG=ja_JP.utf8 &&
wine nipa.exe -cg nss-de nss-patch.npa DramaticalMurder &&
echo "Done!" || echo "Error!"
