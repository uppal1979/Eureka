pipeline {
    agent any

    stages {
        stage ('Build') {
            steps {
                withMaven(maven: 'maven_3_6_2') {
            
                    bat 'mvn clean package'
                }
            }

        }

        stage ('Deploy to environment using manifest') {
            steps {

               
                    sh '/usr/local/bin/cf login -a https://api.sys.dev.pcf-aws.com -u rajiv.uppal@wipro.com -p changeme '
                    sh '/usr/local/bin/cf push -f manifest'
                
            }

        }
    }

}
