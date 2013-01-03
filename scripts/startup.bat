# Command to start the script
# Usage: startup.bat [optional target_name]
# Examples:
#   startup.bat
#   startup.bat setup
#   startup.bat clean
#   startup.bat install
#
java -classpath "../lib/commons-cli/commons-cli/jars/commons-cli-1.2.jar;../lib/commons-cli/commons-cli/jars/commons-cli-1.2.jar;../lib/org.apache.ant/ant-launcher/jars/ant-launcher-1.8.2.jar;../lib/org.apache.ant/ant/jars/ant-1.8.2.jar;../lib/org.codehaus.groovy/groovy-all/jars/groovy-all-1.8.6.jar;../lib/org.codehaus.gant/gant_groovy1.8/jars/gant_groovy1.8-1.9.6.jar;" org.codehaus.groovy.tools.GroovyStarter --main gant.Gant --file setupTranSMARTDevelopment.gant %1