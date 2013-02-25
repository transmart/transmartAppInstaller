transmartAppInstaller meant for  tranSMART - translational medicine data mart

Author : pieter lukasse

About transmartAppInstaller

transmartAppInstaller is an installation script for transmartApp, transmartApp DB and related i2b2 software
using GAnt (Ant in Groovy). It is written specifically for setting up the transmartApp version that uses
the PostgreSQL DB.
The target audience for this installer is not end users, but developers who want to experiment with or contribute to tranSMART.

This software is licensed under the Apache License 2.0.
Open source components contained therein may have different (but generally compatible) licenses like Apache License 1.1.


=======================================================================================================

HOW TO USE THIS SOFTWARE

=======================================================================================================

You can start the installation script on the command line:
 * Install Git, PostgreSQL, Ant and Grails
 * Go to the 'scripts' folder
 * Fill in setupTranSMARTDevelopment.properties (possibly by copying the Linux or Mac OSX templates in the folder)
 * Run startup.bat install or ./startup.sh install
