#!/bin/bash
tar -chf files.tar files
rhash --sha3-512 files.tar > files.tar.sha3-512
openssl aes-256-cbc -e -in files.tar -out files.tar.enc -pass file:key
rhash --sha3-512 files.tar.enc > files.tar.enc.sha3-512
