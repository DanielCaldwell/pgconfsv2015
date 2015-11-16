ogr2ogr -overwrite \
        -nlt MULTIPOLYGON \
        -nln states \
        -f PostgreSQL \
        pg:"dbname='geodata' host='localhost' port='5432' user='geouser' password='geouser1'" \
        states  

