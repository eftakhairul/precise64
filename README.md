Vagrant Box Precise64
=========

A standard Ubuntu 12.04 LTS 64-bit box. It has pre-installed apache2, mySql, php5, java 7 and some other php extentions 

  - PHP  5.3
  - Apache 2
  - MySQL 
  - Java 7
  - xdebug


Version
----

1.0

How Download and Install Vagrant
-----------
* [Download] - download vagrant from their officail website
* [Installation] - follow thier official  installation tutorial

How to use it
--------------

```sh
cd ~ | wget https://dl.dropboxusercontent.com/u/6886596/precise64.box
vagrant box add vagrant-precise64 precise64.box
vagrant init vagrant-precise64
vagrant up
```
License
----

Apache LICENSE-2.0




[Download]:http://www.vagrantup.com/downloads.html
[Installation]:http://docs.vagrantup.com/v2/installation/index.html

