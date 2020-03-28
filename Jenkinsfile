pipeline{
    agent any
    stages{
        stage('Build'){
            steps {
                sh 'mvn -f pom.xml clean package'
            }
            post {
                success {
                    echo "Now Archiving the Artifacts..."
                    archiveArtifacts artifacts: '**/*.war'
                }
            }
        }
        stage('Create Docker Image'){
            steps{
                sh "pwd"
                sh "ls -a"
                sh 'docker build . -t sample-project-2:${env.BUILD_ID}'
            }          
        }
    }
}