# DBpedia Server and Databus upload

#$ nano config
# add DBpedia as host

#$ssh dbpedia
#$tmux a

# ctrl+b d for exiting session



## add databus

#$ nano pom.xml
# change groupID to "healthcare"
# change version to date
# module "covid-world-vaccination-progress"
# change databus member to "guang"

# create webID authentication
