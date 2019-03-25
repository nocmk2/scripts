#!/usr/bin/env bash
sudo openssl req -new -sha256 -nodes -out mh.csr -newkey rsa:2048 -keyout mh.key -config server.csr.cnf
sudo openssl x509 -req -in mh.csr -CA roca.pem -CAkey roca.key -CAcreateserial -out mh.crt -days 500 -sha256 -extfile v3.ext
