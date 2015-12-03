sudo -u postgres psql << EOL
\c geodata

SELECT * from sd_roads WHERE rd30full = 'ISLAND AVE';

SELECT ogc_fid, ST_SETSRID( ST_BUFFER(wkb_geometry, 0.00008), 4326) from sd_roads WHERE rd30full = 'ISLAND AVE';

SELECT ogc_fid, ST_SETSRID( ST_BUFFER(wkb_geometry::geography, 10)::geometry, 4326) from sd_roads WHERE rd30full = 'ISLAND AVE';

SELECT '1' as ogc_fid, ST_SETSRID( ST_UNION( ST_BUFFER(wkb_geometry::geography, 0.00008)::geometry), 4326) from sd_roads WHERE rd30full = 'ISLAND AVE';
WITH selected_road AS ( 
    SELECT 1 as ogc_fid, ST_SETSRID( 
        ST_UNION( 
            ST_BUFFER(
                wkb_geometry::geography, 10
            )::geometry                
        ), 
        4326 
    ) as wkb_geometry FROM sd_roads WHERE rd30full = 'ISLAND AVE'
)
SELECT * from sd_manholes WHERE ST_CONTAINS( (SELECT wkb_geometry from selected_road ), wkb_geometry );
 
SELECT * from sd_manholes WHERE ST_CONTAINS( (SELECT ST_UNION( ST_BUFFER( wkb_geometry::geography, 10 )::geometry ) FROM sd_roads WHERE rd30full = 'ISLAND AVE'), wkb_geometry );

EOL

