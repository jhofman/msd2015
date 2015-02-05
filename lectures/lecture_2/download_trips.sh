#!/bin/bash
#
# description:
#   fetches trip files from the citibike site http://www.citibikenyc.com/system-data
#   e.g., https://s3.amazonaws.com/tripdata/201307-citibike-tripdata.zip
#
# usage: ./download_trips.sh
#
# requirements: curl or wget
#
# author: jmh
#

# set a relative path for the citibike data
# (go two directories up, then into the data/citibike directory)
DATA_DIR=../../data/citibike

# get a list of all trip data file urls
# alternatively you can use curl instead if you don't have wget
# curl 'http://www.citibikenyc.com/system-data' | grep tripdata.zip | cut -d'"' -f2
urls=`wget -O - 'http://www.citibikenyc.com/system-data' | grep tripdata.zip | cut -d'"' -f2`

# change to the data directory
cd $DATA_DIR

# loop over each month
for url in $urls
do
    # download the zip file
    wget $url

    # define local file names
    file=`basename $url`
    csv=${file//.zip/}".csv"

    # unzip the downloaded file
    unzip -p $file > $csv

    # remove the zip file
    rm $file
done
