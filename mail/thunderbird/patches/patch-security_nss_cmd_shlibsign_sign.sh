$NetBSD: patch-security_nss_cmd_shlibsign_sign.sh,v 1.3 2012/04/28 16:56:59 ryoon Exp $

This tries to dlopen libsoftokn3.so which is linked against sqlite3,
so we need a directory containing libsqlite3.so in the search path,
beside the directory containing libsoftokn3.so itself.

--- mozilla/security/nss/cmd/shlibsign/sign.sh.orig	2012-04-20 22:40:21.000000000 +0000
+++ mozilla/security/nss/cmd/shlibsign/sign.sh
@@ -26,7 +26,7 @@ WIN*)
     export LIBPATH
     SHLIB_PATH=${1}/lib:${4}:$SHLIB_PATH
     export SHLIB_PATH
-    LD_LIBRARY_PATH=${1}/lib:${4}:$LD_LIBRARY_PATH
+    LD_LIBRARY_PATH=${1}/lib:${4}:${PREFIX}/lib:$LD_LIBRARY_PATH
     export LD_LIBRARY_PATH
     DYLD_LIBRARY_PATH=${1}/lib:${4}:$DYLD_LIBRARY_PATH
     export DYLD_LIBRARY_PATH