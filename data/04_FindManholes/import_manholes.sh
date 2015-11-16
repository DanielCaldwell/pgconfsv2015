ogr2ogr -overwrite \
        -skipfailures \
        -nln sd_manholes \
        -f PostgreSQL \
        pg:"dbname='geodata' host='localhost' port='5432' user='geouser' password='geouser1'" \
        Sewer_Manholes

