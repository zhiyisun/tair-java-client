#!/bin/bash - 
#===============================================================================
#
#          FILE: build_tair_client.sh
# 
#         USAGE: ./build_tair_client.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Zhiyi Sun (zsun), zsun@apm.com
#  ORGANIZATION: 
#       CREATED: 10/22/2016 06:39:03 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

BASE_DIR=${HOME}/workspace/software/demo/taobao
TAIR_JAVA_CLIENT=tair-java-client
mkdir ~/tair_temp
cp -rf ${BASE_DIR}/${TAIR_JAVA_CLIENT} ~/tair_temp/
cd ~/tair_temp/${TAIR_JAVA_CLIENT}
mvn clean package
cp target/tair-client-2.3.5.jar ~/.m2/repository/com/taobao/tair/tair-client/2.3.5/
