#!/bin/sh
# Requires GS_HOME variable defined
# Check the if the Stone name exist
# Start topaz with the Stone name passed as argument
# If can execute topaz for that Stone then exit

nohup $GS_HOME/bin/startTopaz $1 -ilq <<EOF >>check.out 
exit 
EOF