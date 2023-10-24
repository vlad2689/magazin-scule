# make sure to build before running this script.
echo -e '1. Copying files to inchiriere-scule-brasov server'
scp -r ./deployment admin@185.47.172.18:./website;
echo -e ''
echo -e '5. DONE'
echo -e ''
