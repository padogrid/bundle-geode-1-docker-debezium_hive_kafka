#
# Enter app specifics in this file.
#

# Cluster level variables:
# ------------------------
# BASE_DIR - hazelcast-addon base dir
# ETC_DIR - Cluster etc dir
# LOG_DIR - Cluster log dir

# App level variables:
# --------------------
# APPS_DIR - <hazelcast-addon>/apps dir
# APP_DIR - App base dir
# APP_ETC_DIR - App etc dir
# APP_LOG_DIR - App log dir

# Set JAVA_OPT to include your app specifics.
JAVA_OPTS="-Xms256m -Xmx256m"

# HAZELCAST_CLIENT_CONFIG_FILE defaults to etc/hazelcast-client.xml
HAZELCAST_CLIENT_CONFIG_FILE="$APP_DIR/padogrid/etc/hazelcast-client.xml"
JAVA_OPTS="$JAVA_OPTS -Dhazelcast.client.config=$HAZELCAST_CLIENT_CONFIG_FILE"

CLASSPATH="$CLASSPATH:$APP_DIR/padogrid/plugins/*"
if [[ ${OS_NAME} == CYGWIN* ]]; then
   CLASSPATH="$(cygpath -wp "$CLASSPATH")"
fi
