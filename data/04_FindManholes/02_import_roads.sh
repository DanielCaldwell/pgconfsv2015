ogr2ogr -overwrite \
        -skipfailures \
        -nln sd_roads \
        -f PostgreSQL \
        pg:"dbname='geodata' host='localhost' port='5432' user='geouser' password='geouser1'" \
        Roads_All

