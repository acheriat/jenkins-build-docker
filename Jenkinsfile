node{
    def app

    stage ('Clone') { // On va cloner un dépôt distant. et le scm sera définie das le job jenkins 
        checkout scm
    }

    stage ('Build image nginx') { 
        //Construire une image acheriat/nginx. "acheriat" = c'est pour taguer l'image à construire 
        app = docker.build("acheriat/nginx") 
    }

    stage ('Test image nginx') {
        docker.image('acheriat/nginx').withRun('-p 80:80') { c ->
        sh 'docker ps'
        sh 'curl localhost'
        }
        
    }
}