sudo -u postgres psql << EOF
\c geodata

SELECT ST_ISVALID(wkb_geometry) from polygon_test;

EOF
