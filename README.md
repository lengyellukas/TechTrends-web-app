# TechTreds Web Application

This is a Flask application that lists the latest articles within the cloud-native ecosystem.

## Run 

To run this application there are 2 steps required:

1. Initialize the database by using the `python init_db.py` command. This will create or overwrite the `database.db` file that is used by the web application.
2.  Run the TechTrends application by using the `python app.py` command. The application is running on port `3111` and you can access it by querying the `http://127.0.0.1:3111/` endpoint.

## Details
argocd - the folder that contain the ArgoCD manifests
helm - the folder that contain the Helm chart files
kubernetes - the folder that contain Kubernetes declarative manifests
docker_commands - the file used to record any used Docker commands and outputs
Dockerfile - the file that contains the instructions to package the application
.github/workflows - folder containing the configuration for GitHub Actions workflows
