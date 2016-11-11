#!/bin/bash
REL=$(lsb_release -sc)
./autogen.sh
./configure --prefix=/usr --with-apxs=/usr/bin/apxs2 --with-apr=/usr/bin/apr-config --enable-pcre-match-limit=no --enable-pcre-match-limit-recursion=no --enable-htaccess-config --disable-mlogc --with-yajl=/tmp
checkinstall --maintainer="michael.kjeldsen@vaimo.com" --pkgversion="2.x" --pkgrelease="$REL" --requires="libapr1,libaprutil1,libcurl3-gnutls,libxml2,libpcre3,libc6"