#!/bin/bash
tar -chf files.tar files
openssl aes-256-cbc -e -in files.tar -out files.tar.enc -pass file:key
