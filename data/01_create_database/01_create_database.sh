# create a user for the database
sudo -u postgres psql << EOF
create user geouser;
alter user geouser with superuser;
alter user geouser with createdb;
alter user geouser with password 'geouser1';
EOF

# add the PostGIS extension? 
sudo -u postgres psql << EOF
create database geodata;
\c geodata;
create extension postgis;
EOF

# add a table just to have something to look at to test ogr
sudo -u postgres psql << EOF
\c geodata;

CREATE TABLE test ( 
    name varchar(50)
);

CREATE TABLE test_geometry (
    name varchar(50),
    wkb_geometry GEOMETRY(point, 4326)
);

EOF

