ogr2ogr -overwrite \
        -skipfailures \
        -nln polygon_test \
        -f PostgreSQL \
        pg:"dbname='geodata' host='localhost' port='5432' user='geouser' password='geouser1'" \
        polygon_test

