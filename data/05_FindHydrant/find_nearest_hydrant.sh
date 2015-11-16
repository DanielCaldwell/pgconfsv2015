sudo -u postgres psql << EOL

\c geodata

SELECT * from sd_businesses where ownnam1 = 'INFUZON OF THE CASKROOM';

Select *, ST_DISTANCE( wkb_geometry::geography, (SELECT wkb_geometry::geography from sd_businesses where ownnam1 = 'INFUZON OF THE CASKROOM') )  as distance from sd_hydrants order by distance asc limit 3;

CREATE TABLE nearest_three as (Select *, ST_DISTANCE( wkb_geometry, (SELECT wkb_geometry as wkb_geometry from sd_businesses where ownnam1 = 'INFUZON OF THE CASKROOM') ) as distance  from sd_hydrants order by distance asc limit 3);

EOL
