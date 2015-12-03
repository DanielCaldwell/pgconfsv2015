ogr2ogr -overwrite \
        -skipfailures \
        -nln california_cities \
        -f PostgreSQL \
        pg:"dbname='geodata' host='localhost' port='5432' user='geouser' password='geouser1'" \
        california_cities

