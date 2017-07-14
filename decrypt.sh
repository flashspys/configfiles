#!/bin/bash
mkdir oldfiles
openssl aes-256-cbc -d -in files.tar.enc -out files.tar -pass file:key
tar -xvf files.tar -C oldfiles
