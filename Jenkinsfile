pipeline {
    agent any

    parameters {
            booleanParam(name: 'INIT_TERRAFORM', defaultValue: true, description: 'Check to init Terraform changes')
            booleanParam(name: 'PLAN_TERRAFORM', defaultValue: false, description: 'Check to plan Terraform changes')
            booleanParam(name: 'APPLY_TERRAFORM', defaultValue: false, description: 'Check to apply Terraform changes')
            booleanParam(name: 'DESTROY_TERRAFORM', defaultValue: false, description: 'Check to apply Terraform changes')
    }

    stages {
        stage('Clone Repository') {
            steps {
                // Clean workspace before cloning (optional)
                deleteDir()

                // Clone the Git repository
                git branch: 'main',
                    url: 'https://github.com/pradeepcloud2060/devops-infra-project-1.git'

                sh "ls -lart"
            }
        }

        stage('Terraform Init') {
            steps {
                script {
                    if (params.INIT_TERRAFORM) {
                       withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'aws-credetial-eu-central-1', region: 'eu-central-1']]){
                            dir('infra') {
                                sh 'echo "=================Terraform Init=================="'
                                sh 'terraform init'
                            }
                        }
                    }
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                script {
                    if (params.PLAN_TERRAFORM) {
                       //withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'aws-credetial-eu-central-1', region: 'eu-central-1']]){
                        withAWS(credentials: 'aws-credetial-eu-central-1', region: 'eu-central-1') {

                            dir('infra') {
                                sh 'echo "=================Terraform Plan=================="'
                                sh 'terraform plan'
                            }
                        }
                    }
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                script {
                    if (params.APPLY_TERRAFORM) {
                       withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'aws-credetial-eu-central-1', region: 'eu-central-1']]){
                            dir('infra') {
                                sh 'echo "=================Terraform Apply=================="'
                                sh 'terraform apply -auto-approve'
                            }
                        }
                    }
                }
            }
        }

        stage('Terraform Destroy') {
            steps {
                script {
                    if (params.DESTROY_TERRAFORM) {
                       withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'aws-credetial-eu-central-1', region: 'eu-central-1']]){
                            dir('infra') {
                                sh 'echo "=================Terraform Destroy=================="'
                                sh 'terraform destroy -auto-approve'
                            }
                        }
                    }
                }
            }
        }
    }
}