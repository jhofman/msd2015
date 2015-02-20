wget http://s3.amazonaws.com/tripdata/201307-citibike-tripdata.zip
unzip 201307-citibike-tripdata.zip
head -1000 2013-07\ -\ Citi\ Bike\ trip\ data.csv >! citi1000.csv
