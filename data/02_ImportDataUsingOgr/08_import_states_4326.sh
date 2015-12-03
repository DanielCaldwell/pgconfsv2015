ogr2ogr -overwrite \
        -nlt MULTIPOLYGON \
        -nln states_4326 \
        -t_srs EPSG:4326 \
        -f PostgreSQL \
        pg:"dbname='geodata' host='localhost' port='5432' user='geouser' password='geouser1'" \
        states

