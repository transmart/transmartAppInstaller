transmartAppInstaller meant for  tranSMART - translational medicine data mart
Author : Pieter Lukasse  (pieter at thehyve.nl)

## About transmartAppInstaller

transmartAppInstaller is an installation script that sets up some dependencies for running Postgres-based
branches of transmartApp. This includes the tranSMART Postgres database schemas and example content,
the database schema and patches for i2b2 (unless you are running the core integration branch,
in which case you don't need i2b2), and the tranSMART configuration files.
The target audience for this installer is developers who want to experiment with or contribute to
Postgres based branches of tranSMART. It is not meant to set up a full production setup of tranSMART.

This software is licensed under the Apache License 2.0.
Open source components contained therein may have different (but generally compatible) licenses like Apache License 1.1.


## Instructions for use

 * Install a JDK (6.0 or 7.0 should work) and set JAVA_HOME
 * Install Git, PostgreSQL, Ant, Grails
 * Optionally install JBoss with i2b2 (http://transmartproject.org/wiki/download/attachments/30441474/jboss-4.2.2.GA.tar.gz?version=1&modificationDate=1335242608000)
 * Configure PostgreSQL such that you can login as the 'postgres' user using psql command line (e.g. via pg_hba.conf)
 * Go to the 'scripts' folder
 * Fill in setupTranSMARTDevelopment.properties (possibly by copying the Linux, Mac OSX or Windows templates in the folder)
 * Run startup.bat or ./startup.sh (caution: this will run clean, so only do this when you have no tranSMART configuration yet)

This will set you up with the neccessary database schemas, patch i2b2 so that it runs on Postgres and create the tranSMART configuration files.
You will still have to checkout and run transmartApp itself and run JBoss with i2b2 in order to actually get a working tranSMART application.
Note: if you use the core-integration branch of tranSMART, you do not need JBoss with i2b2.
