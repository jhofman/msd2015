#!/bin/bash
#
# downloads wikipedia voting network
#
# see http://snap.stanford.edu/data/wiki-Vote.html
#

# download gzip file
[ -f wiki-Vote.txt.gz ] || curl -O http://snap.stanford.edu/data/wiki-Vote.txt.gz

# uncompress gzip file
[ -f wiki-Vote.txt ] || gzip -d wiki-Vote.txt.gz
