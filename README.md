# devopstest

## Usage
### Prerequisites
The only prerequisites to setup the Mesos Marathon Zookeeper cluster is to have [Docker](https://www.docker.com/) and [Docker Compose](https://docs.docker.com/compose/) installed. 
## Installation
1. Run the setEnv.sh script like `. setEnv.sh` 
2. Run `docker-compose up` or `sudo -E docker-compose up`

That's it! You can now see the different pieces of the cluster in a web browser like so (hostname is the name or ip address that the cluster was installed on. localhost should work if installed locally)
* Mesos master http://hostname:5050 
* Mesos slave http://hostname:5051
* Marathon UI http://hostname:8080

## Testing out the cluster
