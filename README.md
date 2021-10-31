# CI / CD - WeightTracker Application

In the current project we had to deploy to two environments
Staging and Production,

In the # Staging environment
Defined Continuous Integration and Continuous Deployment.

The Continuous Integration, an operation to raise Artifact to the environment,
The Continuous Deployment runs the Staging environment automatically using the Ansible Playbook to deploy the application.

In the environment of #Production
Defined Continuous Integration and Continuous Delivery.

The Continuous Integration, an operation to raise Artifact to the environment,
The Continuous Delivery runs the production environment only after manual approval and then runs through the Ansible Playbook to deploy the application.

# Ansible

An application was uploaded by Playbook running on two environments:
# Staging and Production

The Staging environment contains weak servers compared to Production's servers.

A connection was made to a master machine between the other machines (VM1 Staging in the Staging environment, and VM1 Production in the Production environment).

The Playbook contains:

Server updates.

Installing Nodejs.

Creating ENV according to data in a separate var file (which was not uploaded here for security reasons but the names of the variables are clear).

Installing the application and connecting to azure database.

Preserving the environment works even after reboot with PM2.



# Node.js Weight Tracker

![Demo](docs/build-weight-tracker-app-demo.gif)

