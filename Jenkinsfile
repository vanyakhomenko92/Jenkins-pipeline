#!/usr/bin/env groovy
pipeline {
   agent any
   options {
      buildDiscarder(logRotator(numToKeepStr: '5')) 
      timestamps()
   }
    
   environment {
      OWNER = 'Yuriy'
      //VALUE_TWO = '2'
     // VALUE_THREE = '3'
   }
    
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
            notifyEvents message: '${OWNER}, Build and test were successful', token: 'wEdjJ5L4-hGIzg39oGxWt_qqz-AtHqIY'
         }
      }  
   }
}
