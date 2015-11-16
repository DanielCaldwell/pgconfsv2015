sudo -u postgres psql << EOF
\c geodata

UPDATE polygon_test SET wkb_geometry = ST_MULTI( ST_MAKEVALID(wkb_geometry)) where not ST_ISVALID(wkb_geometry);

EOF
