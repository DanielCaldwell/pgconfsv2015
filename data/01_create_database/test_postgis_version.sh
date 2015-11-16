sudo -u postgres psql << EOF
\c geodata
select postgis_full_version();
EOF
