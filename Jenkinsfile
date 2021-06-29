// @Library('todoapp') _

// todoapp (
//     COMPONENT          : 'login',
//     PROJECT_NAME       :  "Todoapp",
//     SLAVE_LABEL        :  "java",
//     SKIP_NEXUS_UPLOAD  :  false,
//     APP_TYPE           :  "NGINX"
// )

pipeline {
    agent any

    stages {

        stage('prepare artifacts') {
            steps {
                sh '''
                  zip -r ../login.zip *
                '''
            }
        }

        stage('Upload Artifacts') {
            steps {
                sh '''
                  curl -f -v -u admin:admin123 --upload-file /var/lib/jenkins/workspace/CI-Pipelines/login.zip http://172.31.1.61:8081/repository/login/login.zip
                '''
            }
        }
    }
}