# DBpedia Server and Databus upload

nano config
# add DBpedia as host
Host gfs
	Hostname dbpedia.informatik.uni-leipzig.de
	User root
	Port 22
ssh dbpedia
tmux a
# co-editing and demo for ssh dbpedia session
# ctrl+b d for exiting session


## add to databus
# Link to upload on DBpedia server: https://databus.dbpedia.org/system/upload
# Online upload doesn't work


# Upload using Maven Deploy
git clone https://github.com/dbpedia/databus-maven-plugin

nano pom.xml
# change groupID to "healthcare"
# change version to date
# module "covid-world-vaccination-progress"
# change databus member to "guang"

# create webID authentication
# Obtain Webid: https://github.com/dbpedia/webid