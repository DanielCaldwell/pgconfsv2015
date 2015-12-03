ogr2ogr -overwrite \
        -skipfailures \
        -nln sd_hydrants \
        -f PostgreSQL \
        pg:"dbname='geodata' host='localhost' port='5432' user='geouser' password='geouser1'" \
        Water_Hydrants

