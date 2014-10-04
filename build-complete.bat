echo "NOTE: A working Japanese Locale is required"
echo "Building nss.npa..."
copy nss-de\*.nss nss
nipa.exe -c nss nss.npa
echo "Done!"
