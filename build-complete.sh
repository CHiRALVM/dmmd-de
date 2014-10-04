#!/bin/bash
echo "Building nss.npa" &&
LANG=ja_JP.utf8 &&
cp nss-de/*.nss nss &&
wine nipa.exe -cg nss nss.npa DramaticalMurder &&
echo "Done!" || echo "Error!"
