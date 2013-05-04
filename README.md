transmartAppInstaller meant for  tranSMART - translational medicine data mart

Author : Pieter Lukasse  (pieter at thehyve.nl)

About transmartAppInstaller

transmartAppInstaller is an installation script for transmartApp, transmartApp DB and related i2b2 software
using GAnt (Ant in Groovy). It is written specifically for setting up the transmartApp version that uses
the PostgreSQL DB.
The target audience for this installer is not end users, but developers who want to experiment with or contribute to tranSMART.
The scripts sets up the basis for a local tranSMART development environment.

This software is licensed under the Apache License 2.0.
Open source components contained therein may have different (but generally compatible) licenses like Apache License 1.1.


=======================================================================================================

HOW TO USE THIS SCRIPT

=======================================================================================================

 * Install a JDK (6.0 or 7.0 should work) and set JAVA_HOME
 * Install Git, PostgreSQL, Ant, Grails and JBoss with i2b2 (http://transmartproject.org/wiki/download/attachments/30441474/jboss-4.2.2.GA.tar.gz?version=1&modificationDate=1335242608000)
 * Configure PostgreSQL such that you can login as the 'postgres' user using psql command line (e.g. via pg_hba.conf)
 * Go to the 'scripts' folder
 * Fill in setupTranSMARTDevelopment.properties (possibly by copying the Linux, Mac OSX or Windows templates in the folder)
 * Run startup.bat or ./startup.sh (caution: this will run clean, so only do this when you have no tranSMART configuration yet)

This will set you up with the neccessary database schemas, patch i2b2 so that it runs on Postgres and create the tranSMART configuration files.
You will still have to checkout and run transmartApp itself and run JBoss with i2b2 in order to actually get a working tranSMART application.
Note: if you use the core-integration branch of tranSMART, you do not need JBoss with i2b2.
