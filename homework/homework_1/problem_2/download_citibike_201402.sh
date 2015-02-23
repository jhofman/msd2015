#!/bin/bash

# download the zipfile
[ -f 201402-citibike-tripdata.zip ] || curl -O https://s3.amazonaws.com/tripdata/201402-citibike-tripdata.zip

# unzip it to a csv file
unzip -p 201402-citibike-tripdata.zip > 201402-citibike-tripdata.csv
