#!/bin/bash

commit=$1
previous=$2
currentBranch=$3

if [ "${previous}" == "null" ]; then

   filesChanged=$(git diff --name-only remotes/origin/develop ${currentBranch})

elif [ "${commit}" != "null" ] && [ "${previous}" != "null" ]; then

   filesChanged=$(git diff --name-only $previous $commit)


fi

other=false
frontend=false
mobile=false
backend=false

run=''

for item in $filesChanged; do

if [ -z "${item##*backend*}" ] ;then
      backend=true
elif [ -z "${item##*frontend*}" ] ;then
      frontend=true
elif [ -z "${item##*mobile*}" ] ;then
      mobile=true
else
      other=true
fi

done

if $backend ; then
  run=backend
fi

if $frontend ; then
  run=$run,frontend
fi

if $mobile ; then
  run=$run,mobile
fi

if [ -z "${run}" ] || $other; then
   echo "backend,frontend,mobile"
else

   echo $run
fi
