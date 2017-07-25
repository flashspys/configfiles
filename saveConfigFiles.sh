#!/bin/bash
$(dirname "$0")/encrypt.sh
rhash -c files.tar.sha3-512
if [[ $? -eq 0 ]]; then
    git add *
    git commit -m "new config files"
    git push
fi
exit 0
