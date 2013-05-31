transmartAppInstaller meant for  tranSMART - translational medicine data mart
Author : Pieter Lukasse  (pieter at thehyve.nl)

## About transmartAppInstaller

transmartAppInstaller is an installation script that sets up some dependencies
for running Postgres-based branches of transmartApp. This includes the tranSMART
Postgres database schemas and example content, the database schema and
patches for i2b2 (unless you are running the core integration branch, in
which case you don't need i2b2), and the tranSMART configuration files.  The
target audience for this installer is developers who want to experiment with
or contribute to Postgres based branches of tranSMART. It is not meant to
set up a full production setup of tranSMART.

This software is licensed under the Apache License 2.0.  Open source components
contained therein may have different (but generally compatible) licenses like
Apache License 1.1.


## Instructions for use

 * Install a JDK (6.0 or 7.0 should work) and set JAVA_HOME
 * Install Git, PostgreSQL, Ant (ant required only on Windows)
 * If NOT using the tranSMART core-integration branch, install JBoss with i2b2:
   http://transmartproject.org/wiki/download/attachments/30441474/jboss-4.2.2.GA.tar.gz
 * Go to the 'scripts' folder.
 * Copy the sample file into setupTranSMARTDevelopment.properties and fill it
   in.
 * Run startup.bat or ./startup.sh (caution: this will run clean, so only do
   this when you have no tranSMART configuration yet). The working directory
   must be directory where the script/batch file is located.

This will set you up with the neccessary database schemas, patch i2b2 so that
it runs on Postgres and create the tranSMART configuration files.  You will
still have to checkout and run transmartApp itself and run JBoss with i2b2 in
order to actually get a working tranSMART application. You will probably also
need to install R (including Rserve and some other packages) and Solr. How to do
this will vary accordingly to the platform and is not handled by this script.

## Troubleshooting database connections

The database settings are a common source of trouble. Explaining the details of
PostgreSQL authentication is outside the scope of this document, but I'll leave
here general remarks. For more information, see:

 * http://wiki.postgresql.org/wiki/Client_Authentication
 * http://www.postgresql.org/docs/9.2/static/auth-methods.html
 * http://www.postgresql.org/docs/9.2/static/libpq-envars.html

You will need a server running on the same machine (if the database is a remote
machine, you will have to create the tablespace locations – but not the
tablespaces themselves – used by the tranSMART database and then you'll have to
patch the gant file to skip the creation of those directories in the local
machine). You will also need a postgres role with superuser privileges.

In distributions such as Debian or Ubuntu, a superuser role with the name
'postgres' is automatically created. A system user with the same name is also
automatically created. In the default setup, this system user can login
automatically as DB superuser if it connects to the database using unix sockets.
The install script supports this setup by attempting to use 'sudo' in order to
login as the 'postgres' user and hence have DB superuser privileges to run the
SQL install scripts and commands.

On Mac OSX, I'm told the brew package manager will create a DB superuser with
the same name as the installing user, but not a database. In that case, you will
only have to setup the workingdb property to something like 'template1' and you
can leave the other database settings empty.

Finally, on Windows the postgres user password is asked upon installation. You
will have to provide the password to the script and use the db user 'postgres'.
