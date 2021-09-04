pipeline {
  agent any
  stages {
    stage('Construyendo la app') {
      steps {
        echo 'Paso 1 construyendo la App'
        sh 'sh ejecutar_constructor_script.sh'
      }
    }

    stage('Realizando la prueba en Linux') {
      steps {
        echo 'Realizando la prueba en Linux'
        sh 'sh ejecutar_test_para_Linux.sh'
      }
    }

    stage('Esperando confirmacion manual') {
      steps {
        echo 'Esperando por la confirmacion manual'
        input 'Esta todo Ok para desplegar'
      }
    }

    stage('Momento de confirmacion') {
      steps {
        timestamps() {
          echo 'Momento de confirmacion del ok manual'
        }

      }
    }

    stage('Desplegando en Produccion') {
      steps {
        echo 'Desplegando en Produccion'
      }
    }

  }
  post {
    always {
      archiveArtifacts(artifacts: 'demoapp.jar', fingerprint: true)
    }

    failure {
      mail(to: 'marcelo.amaro@estudiantes.utec.edu.uy', subject: 'Failed Pipeline $(currentBuild.fullDisplayName)', body: ' For details about the failure, see $(env.BUILD_URL)')
    }

  }
}