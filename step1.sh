openssl genrsa -des3 -out roca.key
openssl req -x509 -new -nodes -key roca.key -sha256 -days 1024 -out roca.pem
