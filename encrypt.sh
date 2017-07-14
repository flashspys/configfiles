#!/bin/bash
tar -cvhf files.tar files
openssl aes-256-cbc -e -in files.tar -out files.tar.enc -pass file:key
