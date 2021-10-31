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

This sample application demonstrates the following technologies.

* [hapi](https://hapi.dev) - a wonderful Node.js application framework
* [PostgreSQL](https://www.postgresql.org/) - a popular relational database
* [Postgres](https://github.com/porsager/postgres) - a new PostgreSQL client for Node.js
* [Vue.js](https://vuejs.org/) - a popular front-end library
* [Bulma](https://bulma.io/) - a great CSS framework based on Flexbox
* [EJS](https://ejs.co/) - a great template library for server-side HTML templates

**Requirements:**

* [Node.js](https://nodejs.org/) 12.x or higher
* [PostgreSQL](https://www.postgresql.org/) (can be installed locally using Docker)
* [Free Okta developer account](https://developer.okta.com/) for account registration, login

## Install and Configuration

1. Clone or download source files
1. Run `npm install` to install dependencies
1. If you don't already have PostgreSQL, set up using Docker
1. Create a [free Okta developer account](https://developer.okta.com/) and add a web application for this app
1. Copy `.env.sample` to `.env` and change the `OKTA_*` values to your application
1. Initialize the PostgreSQL database by running `npm run initdb`
1. Run `npm run dev` to start Node.js

The associated blog post goes into more detail on how to set up PostgreSQL with Docker and how to configure your Okta account.
