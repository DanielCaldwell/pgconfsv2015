# PostgreSQL Conference for Silicon Valley 
## PostGIS Tutorial

<i>Do you have some geographic data? Shapefiles? KMLs? Would you like to learn how to import the data into PostgreSQL? Come to the conference to learn how to set up PostgreSQL with PostGIS, import your geospatial data, do spatial operations to dig into your data.</i>

The tutorial will present the following: 

- Getting started with PostgreSQL (http://www.postgresql.org/)
- Installing the PostGIS Extension (http://postgis.net/)
- Importing data into the PostgreSQL database using GDAL (http://www.gdal.org)
- Learn about coordinate systems, projections, and how to deal with them
- Running spatial queries to analyze the data 
- Working with geographic and metric distances
- Visualize the data using TileStache (http://tilestache.org/) and Mapnik (http://mapnik.org/)

For more information on the conference, please visit: http://www.pgconfsv.com/


## Machine setup

There are two options for setting up to do the exercises with this tutorial.

### Option 1: 

Create a trial account at www.amigocloud.com. AmigoCloud's advanced queries allow you to learn PostGIS without a lot of setup and configuration. 

### Option 2: 

Use Vagrant to set up a virtual machine that will be used as the PostgreSQL and TileStache server. To setup for this you will need to install the following: 

- Git (https://git-scm.com)
- VirtualBox (https://www.virtualbox.org/wiki/Downloads)
- Vagrant (https://www.vagrantup.com/downloads.html)
- QGIS (http://www.qgis.org/en/site/)
- QGIS's PostGIS Sql Plugin 

Once you have these installed, clone this git repository to your machine and run the vagrant script provided to setup the machine.




