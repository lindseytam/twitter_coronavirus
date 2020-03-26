#!/bin/sh

# this command creates a log folder if it doesn't already exist
mkdir -p visuals
# by default, python uses what's called "buffered" output;
# buffered output causes python to 
export PYTHONUNBUFFERED=True

# this is the main loop for your analysis
# this loop processes each file in /data/twitter_corona
# and passes the file to your map.py file as input
# for path in /data/tweets_corona/*; do
declare -a StringArray=("#코로나바이러스" "#コロナウイルス" "#冠状病毒" "#covid2019" "#covid-2019" \
                        "#covid19" "#covid-19" "#coronavirus" "#corona" "#virus" "#flu"\
                        "#sick" "#cough" "#sneeze" "#hospital" "#nurse" "#doctor")
for val in ${StringArray[@]}; do

    # extracts the filename from the path variable
#     filename=$(basename "$path")

    # run the map.py program on the input $path,
    # and save all output into log/$filename
    hashtag


    # nohup src/map.py "--input_path=$path" > log/$filename
    nohup ./src/visualize.py --input_path=reduced.lang --key=hashtag | head > visuals/hashtag
    nohup ./src/visualize.py --input_path=reduced.country --key=hashtag | head > visuals/hashtag
    

done
