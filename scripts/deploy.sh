#!/bin/bash

#Assignment of variables
project_dir=$(pwd)
SECONDS=0

#Installation and Configuration Cassandra Cluster (NoSQL distributed database)
function deploy_cassandra() {
    ansible-playbook $project_dir/cluster.yml -i inventory
    if [ $? -eq 0 ];
    then
        echo "Cassandra Cluster installation was successful!"
        echo "---------------------------------"
    else
        echo "Installation failed!"
        exit 1
    fi
}

function main() {
    deploy_cassandra
    echo "---------------------------------"
    echo "Time spent deploying Cassandra Cluster: $(($SECONDS / 3600))hrs $((($SECONDS / 60) % 60))min $(($SECONDS % 60))sec"
}

main
