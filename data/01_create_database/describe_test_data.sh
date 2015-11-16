sudo -u postgres psql << EOF
\c geodata

\d test

\d test_geometry

EOF
