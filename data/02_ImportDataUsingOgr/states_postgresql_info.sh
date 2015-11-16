ogrinfo -so \
        pg:"dbname='geodata' host='localhost' port='5432' user='geouser' password='geouser1'" \
        states
ogrinfo -so \
        pg:"dbname='geodata' host='localhost' port='5432' user='geouser' password='geouser1'" \
        states_4326
