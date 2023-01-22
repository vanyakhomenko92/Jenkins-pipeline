#!/usr/bin/env groovy
pipeline {
   agent any
   options {
      buildDiscarder(logRotator(numToKeepStr: '5')) 
      timestamps()
   }
    
 //  environment {
      //VALUE_ONE = '1'
      //VALUE_TWO = '2'
     // VALUE_THREE = '3'
 //  }
    
   stages {
   
      stage("Build") {
          steps {
            echo 'Jenkins makes a build'
         }
      }
      
      stage("Tests") {
          steps {
            echo 'Jenkins makes a tests'
         }
      }

      stage('Notification') {
         when {
            branch 'main'
	   }
         steps {
            echo 'Jenkins sends notification on telegram about success'
            notifyEvents message: 'Build and test were successful', token: 'wEdjJ5L4-hGIzg39oGxWt_qqz-AtHqIY'
         }
      }  

      stage('Triger_to_Deploy_to_AWS_Elastic_Beanstalk') {
         when {
            branch 'main'
	   }
         steps {
            echo 'Send triger to Deploy_to_AWS_Elastic_Beanstalk job'
            curl -X POST http://admin:119f4683ea494bd35b1e98827c5a125793@18.198.4.214:8080/job/Deploy_to_AWS_Elastic_Beanstalk/build?token=Gjkncsp640m00nnsdfllatl096nla6aJJFTEncsl
         }
      }    
   }
}