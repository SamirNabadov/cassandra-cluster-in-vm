Cassandra (NoSQL distributed database)
================================


Install & Configure Cassandra Cluster in VM


Configured software and tools
------------
* Cassandra 3.11.11
* cqlsh 5.0.1


Basic settings
------------
* Installed and Configured Cassandra Cluster
* Configured cqlsh tool for connect and execute query in database
* Changed cluster name (By default cluster name is "Test Cluster")
* Created new superuser for database


Currently tested on these Operating Systems
* Linux/RHEL/CentOS 7


Requirements
------------
* Ansible 2.11.7
* Python 2.7


Dependencies
------------
* Copy Ansible control machine user's public SSH key (usually called id_rsa.pub) into the remote machine working directory
* Requires elevated root privileges
* Add hosts address and names for VMs : inventory
* Prepare variable file based on your requirements: cassandra/defaults/main.yml


Running the Deployment
----------------------

On the Ansible Control Machine  

__To deploy__

`./scripts/deploy.sh`


Author Information
------------------

Samir Nabadov
