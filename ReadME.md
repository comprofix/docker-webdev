# Web Development Environment with Apache, PHP8, MariaDB + phpMySQL

This Web Development Environment will allow you to test your PHP and SQL Web applications. Database will remain persistent when environment shutdown.

## Building and installation

Build using docker-compose.

```
docker-compose up -d
```
When finished you can shutdown the environment

```
docker-compose down
```


## VirtualHosts and System Hosts File

Place your Virtual Hosts configs in Hosts Folder or edit the example provided.

Update your systems hosts file
* Windows -  C:\Windows\System32\etc\Drivers\Hosts
* Linux - /etc/hosts

```
127.0.0.1 example.com
```
## Access websites

Place your web files in the www/html folder.

Open your browser to http://127.0.0.1 or to your domain setup in VirtualHosts/Hosts file.

You can access phpMyAdmin using port 8000 - http://127.0.0.1

```
Username: admin
Password: admin
```
