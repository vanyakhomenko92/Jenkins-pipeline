#!/usr/bin/env groovy
pipeline {
   agent any
   options {
      buildDiscarder(logRotator(numToKeepStr: '5')) 
      timestamps()
   }
    
   environment {
      OWNER = 'Yuriy'
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
      post {
          success { 
              sh  ("""
                  curl -s -X POST https://api.telegram.org/bot${5896903875:AAF2-YrNhtufWCzrjIMsAIA5DDkVgB_2RGA}/sendMessage -d chat_id=${-1001239498345} -d parse_mode=markdown -d text='*https://github.com/yurakorabel/task9_jenkins* \n *Job Name: task9_job* \n *Branch*: $GIT_BRANCH \n *Build* : [OK](${BUILD_URL}consoleFull)'
               """)
           }
      }  
   }
}
