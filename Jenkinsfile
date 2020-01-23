pipeline {
    agent any

    stages {
        stage ('Build') {
            steps {
                withMaven(maven: 'M3') {
            
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
