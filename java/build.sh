cd /gitrepo/GmSSL/java
cp ../libcrypto.so  ../libcrypto.so.1.1  ../libssl.so  ../libssl.so.1.1 lib/
gcc -shared -fPIC -Wall -I ./jni -I /gitrepo/GmSSL/include -L /gitrepo/GmSSL/lib GmSSL.c -lcrypto -o lib/libgmssljni.so
rm org/gmssl/GmSSL.class
javac org/gmssl/GmSSL.java
java -Djava.library.path=./lib org.gmssl.GmSSL

