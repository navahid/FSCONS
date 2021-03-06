# Drupal tends to add ?-something after some file names. We should remove them
find . -name "*.css\??" -exec rename 's/\.css\?.$/\.css/' {} \;
find . -type f -exec perl -i -p -e 's/\.css\?./\.css/g' {} \;

find . -maxdepth 1 -type f -exec perl -i -p -e 's/https?:\/\/fscons.org\/2010/\./g' {} \;
find . -maxdepth 2 -type f -exec perl -i -p -e 's/https?:\/\/fscons.org\/2010/\.\./g' {} \;
find . -maxdepth 3 -type f -exec perl -i -p -e 's/https?:\/\/fscons.org\/2010/\.\.\/\.\./g' {} \;

find . -maxdepth 1 -type f -exec perl -i -p -e 's/https?:\/\/fscons.org/\./g' {} \;
find . -maxdepth 2 -type f -exec perl -i -p -e 's/https?:\/\/fscons.org/\.\./g' {} \;
find . -maxdepth 3 -type f -exec perl -i -p -e 's/https?:\/\/fscons.org/\.\.\/\.\./g' {} \;
