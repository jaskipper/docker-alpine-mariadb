## MariaDB 10 server on Alpine

![Docker Hub; jaskipper/alpine-mariadb](https://img.shields.io/badge/dockerhub-jaskipper%2Falpine-mariadb-green.svg)](https://registry.hub.docker.com/u/jaskipper/alpine-mariadb)
Forked from nimmis/alpine-mariadb

## What is MariaDB?

MariaDB is a community-developed fork of the MySQL relational database management system intended to remain free under the GNU GPL.


Container based on ![Docker Hub; nimmis/alpine-micro](https://img.shields.io/badge/dockerhub-nimmis%2Falpine-micro-green.svg)](https://registry.hub.docker.com/u/nimmis/alpine-micro), a minimal os (8.5 Mb)  with working init process and syslog. For more information on how to set up services, please read the documentation for [nimmis/alpine-micro](https://registry.hub.docker.com/u/nimmis/alpine-micro). This container is about half the size of the official mariadb docker container.

## Starting the container

To run the latest stable version of this docker image run

	docker run -d -e MYSQL_RANDOM_ROOT_PASSWORD=yes jaskipper/alpine-mariadb

to expose the database to the external interface run

	docker run -d -p 3306:3306 -e MYSQL_RANDOM_ROOT_PASSWORD=yes jaskipper/alpine-mariadb

## Environment variables used in the container

### MYSQL_ROOT_PASSWORD
This variable defines the password for the root user in the database, se it with

	-e MYSQL_ROOT_PASSWORD=secretpassword

add quotes if there is spaces or other special character in the password

	-e MYSQL_ROOT_PASSWORD='password with spaces'

### MYSQL_RANDOM_ROOT_PASSWORD
This variable generate a random password for the root user, add

	-e MYSQL_RANDOM_ROOT_PASSWORD=yes

the password can then be found by looking at the logoutput

	docker logs <container>

### MYSQL_ALLOW_EMPTY_PASSWORD
This allows the root password to be blank, THIS IS A MAJOR SECURITY RISK, add

	-e MYSQL_ALLOW_EMPTY_PASSWORD=yes

### MYSQL_REMOTE_ROOT
Normal the root user can only use localhost to access the databases adding

	-e MYSQL_REMOTE_ROOT=yes

allows root access from any host

### MYSQL_DATABASE
creates a database with the defined name

	-e MYSQL_DATABASE=databasename

### MYSQL_USER
creates a user with password defined with MYSQL_PASSWORD and full access to the database defined by MYSQL_DATABASE

	-e MYSQL_USER=username

### MYSQL_PASSWORD
The apssword for the user defined by MYSQL_USER

	-e MYSQL_PASSWORD=donottell
