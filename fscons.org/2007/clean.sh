# Drupal tends to add ?-something after some file names. We should remove them
find . -name "*\??" -exec rename 's/\?H$//' {} \;
find . -type f -exec perl -i -p -e 's/\.css\?./\.css/g' {} \;

find . -maxdepth 1 -type f -exec perl -i -p -e 's/https?:\/\/fscons.org\/2007/\./g' {} \;
find . -maxdepth 2 -type f -exec perl -i -p -e 's/https?:\/\/fscons.org\/2007/\.\./g' {} \;
find . -maxdepth 3 -type f -exec perl -i -p -e 's/https?:\/\/fscons.org\/2007/\.\.\/\.\./g' {} \;
