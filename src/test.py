import os
import zipfile
import json
import datetime

datadir = '/data/tweets_corona/geoTwitter20-01-03.zip'

for filename in os.listdir(datadir):
    print("in data dir=", filename)
    try:
        with zipfile.ZipFile(datadir+'/'+filename, 'r') as archive:
            print(filename)
            for subfilename in archive.namelist():

                print(subfilename)
                with archive.open(subfilename) as f:
                    for line in f:
                        # do work here
                        print(line)

    except zipfile.BadZipFile:
        print('skipping')
        
