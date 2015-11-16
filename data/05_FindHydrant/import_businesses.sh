ogr2ogr -overwrite \
        -skipfailures \
        -nln sd_businesses \
        -f PostgreSQL \
        pg:"dbname='geodata' host='localhost' port='5432' user='geouser' password='geouser1'" \
        Business_Sites

