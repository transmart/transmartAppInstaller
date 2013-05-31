#!/bin/sh

#:: Command to start the script
#:: Usage: startup.sh [optional target_name]
#:: Examples:
#::   startup.sh
#::   startup.sh setup
#::   startup.sh clean
#::   startup.sh install
#:: If necessary, grant executable rights with chmod +x startup.sh
#::
#:: Current directory should be script's directory

if [ -z "$JAVA_HOME" ]; then
	JAVA_LOCATION=`which java`
	if [ -n "$JAVA_LOCATION" ]; then
		JAVA_HOME=`readlink -m '$JAVA_LOCATION' | xargs dirname | xargs dirname | xargs dirname`
	fi
	if [ -z "$JAVA_HOME" ]; then
		echo "Could not find java. Define JAVA_HOME"
		exit 1
	fi
fi

if [ ! -f "$JAVA_HOME/bin/java" ]; then
	echo "Could not find java. Define JAVA_HOME"
	exit 1
fi

export JAVA_HOME
"$JAVA_HOME/bin/java" -classpath "../lib/postgresql91-jdbc.jar:../lib/commons-cli/commons-cli/jars/commons-cli-1.2.jar:../lib/commons-cli/commons-cli/jars/commons-cli-1.2.jar:../lib/org.apache.ant/ant-launcher/jars/ant-launcher-1.8.2.jar:../lib/org.apache.ant/ant/jars/ant-1.8.2.jar:../lib/org.codehaus.groovy/groovy-all/jars/groovy-all-1.8.6.jar:../lib/org.codehaus.gant/gant_groovy1.8/jars/gant_groovy1.8-1.9.6.jar" org.codehaus.groovy.tools.GroovyStarter --main gant.Gant --file setupTranSMARTDevelopment.gant $@
