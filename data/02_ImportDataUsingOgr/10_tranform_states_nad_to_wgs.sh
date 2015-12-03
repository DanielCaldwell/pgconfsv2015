sudo -u postgres psql << EOF
\c geodata

ALTER TABLE states
   ALTER COLUMN wkb_geometry TYPE geometry( MultiPolygon, 4326)
      USING ST_TRANSFORM( wkb_geometry, 4326);

EOF



