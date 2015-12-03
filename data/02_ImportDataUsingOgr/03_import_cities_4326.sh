ogr2ogr -overwrite \
        -skipfailures \
        -nln california_cities_4326 \
        -s_srs EPSG:4326 \
        -t_srs EPSG:4326 \
        -f PostgreSQL \
        pg:"dbname='geodata' host='localhost' port='5432' user='geouser' password='geouser1'" \
        california_cities

