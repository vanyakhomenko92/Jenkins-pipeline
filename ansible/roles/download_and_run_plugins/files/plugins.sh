#!/bin/bash
declare -a PluginList=(
    "github"
    "git" 
    "notify-events" 
    "awseb-deployment-plugin"
    "workflow-aggregator"
    "github-branch-source"
    "timestamper"
    "pipeline-stage-view"

)

for plugin in ${PluginList[@]}; do
   java -jar /home/vagrant/jenkins-cli.jar -auth admin:admin -s http://localhost:8080/ install-plugin $plugin
done