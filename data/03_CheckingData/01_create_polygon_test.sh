# add a table just to have something to look at to test ogr
sudo -u postgres psql << EOF
\c geodata;
CREATE TABLE polygon_test ( wkb_geometry geometry( MULTIPOLYGON, 4326));
INSERT INTO polygon_test (wkb_geometry) VALUES ( ST_MULTI( ST_GEOMETRYFROMTEXT( 'POLYGON((9 7, 9 8, 11 8, 11 9, 10 9, 10 7, 9 7))', 4326)));
INSERT INTO polygon_test (wkb_geometry) VALUES ( ST_MULTI( ST_GEOMETRYFROMTEXT( 'POLYGON((2 7, 2 9, 6 9, 6 7, 2 7))', 4326)));
INSERT INTO polygon_test (wkb_geometry) VALUES ( ST_MULTI( ST_GEOMETRYFROMTEXT( 'POLYGON(( 8 2, 8 5, 12 5, 12 2, 10 2, 9 3, 10 4, 11 3, 10 2, 8 2))', 4326)));
INSERT INTO polygon_test (wkb_geometry) VALUES ( ST_MULTI( ST_GEOMETRYFROMTEXT( 'POLYGON(( 2 2, 2 4, 3 4, 3 5, 5 5, 5 3, 4 3, 4 2, 2 2))', 4326)));
EOF

