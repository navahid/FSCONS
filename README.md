FSCONS Website archive
======================

This repository contains the old website fo the FSCONS conferences,
dumped as static html.

I used wget with the following options:

> --adjust-extension

This adds proper extensions, according to the mime type, to the downloaded files.
Helps the server serving the archive choose the right mime type.

> --convert-links

Convert links to relative. Allow moving sites arround

> --recursive


> --no-parent

Allow downloading one year at a time
