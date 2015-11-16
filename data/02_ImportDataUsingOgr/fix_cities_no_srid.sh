sudo -u postgres psql << EOF
\c geodata

ALTER TABLE california_cities
   ALTER COLUMN wkb_geometry TYPE geometry( Point, 4326)
      USING ST_SETSRID( wkb_geometry, 4326);

EOF

