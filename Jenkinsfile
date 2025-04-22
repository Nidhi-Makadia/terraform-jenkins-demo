pipeline {
    agent any

    stages {
        stage('Terraform Init') {
            steps {
                bat 'wsl terraform -chdir=/root/terraform-jenkins-demo init'
            }
        }

        stage('Terraform Apply') {
            steps {
                bat 'wsl terraform -chdir=/root/terraform-jenkins-demo apply -auto-approve'
            }
        }
    }
}
