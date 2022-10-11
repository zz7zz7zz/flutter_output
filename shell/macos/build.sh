#! /bin/bash

echo "################# build start #################"

envMode=$1
channel=$2
product=$3

rootDir=$(cd $(dirname $0); pwd)

echo envMode = $envMode
echo channel = $channel
echo product = $product
echo rootDir = $rootDir


source $rootDir/build_pre.sh

echo
echo ----- 2. build task -----

source $rootDir/build_post.sh

echo "################# build end #################"