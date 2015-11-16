ogrinfo -so \
        pg:"dbname='geodata' host='localhost' port='5432' user='geouser' password='geouser1'" \
        california_cities
ogrinfo -so \
        pg:"dbname='geodata' host='localhost' port='5432' user='geouser' password='geouser1'" \
        california_cities_4326
