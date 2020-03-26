#!/bin/sh

# this command creates a log folder if it doesn't already exist
mkdir -p visuals

# all hashtags
# hashtags = [
#     '#코로나바이러스',  # korean
#     '#コロナウイルス',  # japanese
#     '#冠状病毒',        # chinese
#     '#covid2019',
#     '#covid-2019',
#     '#covid19',
#     '#covid-19',
#     '#coronavirus',
#     '#corona',
#     '#virus',
#     '#flu',
#     '#sick',
#     '#cough',
#     '#sneeze',
#     '#hospital',
#     '#nurse',
#     '#doctor',
#     ]

# by default, python uses what's called "buffered" output;
# buffered output causes python to 
export PYTHONUNBUFFERED=True

# this is the main loop for your analysis
# this loop processes each file in /data/twitter_corona
# and passes the file to your map.py file as input
# for path in /data/tweets_corona/*; do
for hashtag in '#코로나바이러스' # korean
    '#コロナウイルス'  # japanese
    '#冠状病毒'        # chinese
    '#covid2019'
    '#covid-2019'
    '#covid19'
    '#covid-19'
    '#coronavirus'
    '#corona'
    '#virus'
    '#flu'
    '#sick'
    '#cough'
    '#sneeze'
    '#hospital'
    '#nurse'
    '#doctor'; do

    # extracts the filename from the path variable
#     filename=$(basename "$path")

    # run the map.py program on the input $path,
    # and save all output into log/$filename
    hashtag


    # nohup src/map.py "--input_path=$path" > log/$filename
    nohup ./src/visualize.py --input_path=reduced.lang --key=hashtag | head > visuals/hashtag
    nohup ./src/visualize.py --input_path=reduced.country --key=hashtag | head > visuals/hashtag
    

done
