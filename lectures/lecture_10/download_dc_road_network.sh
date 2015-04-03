#!/bin/bash
#
# downloads road network for washington dc
#
# see http://www.dis.uniroma1.it/challenge9/data/tiger/
#

# download gzip file
[ -f DC.tmp.gz ] || curl -O http://www.dis.uniroma1.it/challenge9/data/tiger/DC.tmp.gz


# uncompress gzip file
[ -f DC.tmp ] || gzip -d DC.tmp.gz

# download script to convert to sane(r) format
[ -f tiger2edimacs.pl ] || curl -O http://www.dis.uniroma1.it/challenge9/data/tiger/tiger2edimacs.pl

[ -f DC.tmp.gr ] || perl tiger2edimacs.pl DC.tmp

# parse out edge list
awk '$1 == "a" {print $2"\t"$3}' DC.tmp.gr > dc_road_network.tsv
