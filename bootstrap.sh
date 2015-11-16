#!/usr/bin/env bash
set -x #echo on

# add postgres apt repository (see http://www.postgresql.org/download/linux/ubuntu)

echo "deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main" > /etc/apt/sources.list.d/pgdg.list
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -

apt-get update
apt-get -y install pgdg-keyring

#install build tools
apt-get install -y build-essential gcc g++ git vim curl zip

# install build libraries
apt-get install -y libboost-all-dev libz-dev libtool

# install jpeg image libraries
apt-get install -y libjpeg62 libopenjpeg2 openjpeg-tools libtool

# install png libraries
apt-get install -y libpng12-0 libpng12-dev

# install tiff libraries
apt-get install -y libtiff5 libtiff5-dev

# install graphics librareis
apt-get install -y libgd-tools libgd2-xpm-dev libglib2.0-dev libcairo2-dev

# install text libraries
apt-get install -y  libfreetype6 libfreetype6-dev libicu-dev libharfbuzz-dev

# install fonts
apt-get install -y ttf-unifont ttf-dejavu ttf-dejavu-core ttf-dejavu-extra

# install projection engine
apt-get install -y libproj-dev


# install postgresql
apt-get install -y postgresql-client-9.4
apt-get install -y postgresql-9.4
apt-get install -y libpq-dev
apt-get install -y postgresql-server-dev-9.4

cp /vagrant/data/postgresql/pg_hba.conf       /etc/postgresql/9.4/main/pg_hba.conf
cp /vagrant/data/postgresql/postgresql.conf   /etc/postgresql/9.4/main/postgresql.conf

/etc/init.d/postgresql restart


# install python
apt-get install -y python-pip python-dev python-all-dev python-software-properties

apt-get upgrade


# install geos
sudo apt-get install -y libgeos-dev



# install gdal from sources (http://www.gdal.org)
pushd .
cd ~
mkdir Downloads
cd Downloads
mkdir GDAL
cd GDAL

if [ ! -f gdal-1.11.3.tar.gz ]; then
    wget http://download.osgeo.org/gdal/1.11.3/gdal-1.11.3.tar.gz
fi 

tar xvfz gdal-1.11.3.tar.gz
cd gdal-1.11.3

./configure --with-python --with-pg=/usr/bin/pg_config
make
sudo make install
sudo make install-man

popd




# install postgis (http://postgis.net)
sudo apt-get install -y postgis



# install mapnik (http://mapnik.org)
apt-get install -y libmapnik2-dev mapnik-utils python-mapnik


# install tilestache 
pip install tilestache

pushd .

mkdir /srv
cd srv
mkdir tilestache
cd tilestache

git clone https://github.com/TileStache/TileStache
cd tilestach

popd


# downgrade pillow to avoid issue: https://github.com/TileStache/TileStache/issues/237
pip uninstall pillow
pip install pillow==2.9.0




