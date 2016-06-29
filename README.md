# devopstest

## Usage
### Prerequisites
The only prerequisites to setup the Mesos Marathon Zookeeper cluster is to have [Docker](https://www.docker.com/) and [Docker Compose](https://docs.docker.com/compose/) installed. 
## Installation
1. Run the setEnv.sh script like `. setEnv.sh` 
2. Run `docker-compose up` or `sudo -E docker-compose up`

That's it! You can now see the different pieces of the cluster in a web browser like so (hostname is the name or ip address that the cluster was installed on. localhost should work if installed locally)
* Mesos master http://hostname:5050 
* Marathon UI http://hostname:8080

The Mesos slave should also be reachable at http://hostname:5051 but there is no web UI so you should either get a blank page or a 404.  

## Testing out the cluster
I have included a test PHP app to launch into the cluster. The source of the app is in the phpApp directory of this project but it has already been built and pushed to a [Docker Hub repo](https://hub.docker.com/r/bbenns/php-hello-world/). To try it out do the following (note, you cannot have any other web application on the host using port 80)
* Run this curl command `curl -XPOST -H 'Content-Type: application/json' --data "@hello.json" http://hostname:8080/v2/apps` 
where again hostname is the name or the ip address that the cluster was installed on. hello.json is in the root of this project. 
* Wait for the application to come online. You can check the status in the Marathon UI http://hostname:8080
* Once the hello world application is deployed check it at http://hostname 
