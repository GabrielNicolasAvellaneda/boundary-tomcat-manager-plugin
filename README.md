# boundary-tomcat-manager-plugin

A Boundary plugin that extracts Tomcat metrics from the default manager app.

Note: the modules/boundary.lua module is directly built into the Boundary Meter itself.  It is included here for use with the luvit standalone interpreter.

The metrics that will extract are:

TOMCAT_JVM_FREE_MEMORY - Free memory of the JVM in bytes
TOMCAT_JVM_TOTAL_MEMORY	- Total memory of the JVM in bytes
TOMCAT_JVM_MAX_MEMORY - Max memory of the JVM in bytes

