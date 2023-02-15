#!/bin/bash

buildver=$(grep version versions.json | sed -n 's/^.*"\([0-9][^"]*\)".*$/\1/p')
corever=$(grep common-core versions.json | sed -n 's/^.*"\([0-9][^"]*\)".*$/\1/p')

echo ${buildver}
echo ${corever}

cd UpBoard
sed -i -e 's/version: .*/version: '$buildver'/g' ./balena.yml
rm -f ./balena.yml-e
sed -i -e 's/balena_up_mobiusflow-le.*/balena_up_mobiusflow-le:'$buildver\\_$corever'/g' ./docker-compose.yml
sed -i -e 's/balena_up_manage.*/balena_up_manage:'$buildver'/g' ./docker-compose.yml
rm -f ./docker-compose.yml-e
