# docker-bookstore-web-api
Dockerization of an web api app.

```
Bookstore Web API Application aims to create a bookstore web service using Docker to dockerization of an application. The application code is to be deployed as a RESTful web service with Flask using Dockerfile and Docker Compose on AWS Elastic Compute Cloud (EC2) Instance using Terraform.
```

```
 Get the app code from GitHub repo of your team.
  - Create docker image using the `Dockerfile`.
  - Deploy the app using `docker compose`. To do so;
    - Create a database service using MySQL.
    - Configure the app service to run on `port 80`.
    - Use a custom network for the services.
- In the development environment, you can configure your Terraform config file using the followings,
  - The application should be created with new AWS resources.
  - The application should run on Amazon Linux 2 EC2 Instance
  - EC2 Instance type can be configured as `t2.micro`.
  - Instance launched by Terraform should be tagged `Web Server of Bookstore`
  - The Web Application should be accessible via web browser from anywhere.
  - The Application files should be downloaded from Github repo and deployed on EC2 Instance using user data script within Terraform configuration file.
  - Bookstore Web API URL should be given as output byTerraform, after the resources created.
```

```
203-dockerization-bookstore-api-on-python-flask-mysql (folder)
|
|----readme.md          # Given to the Devops (Definition of the project)
|----bookstore-api.py   # Given to the Devops (Python Flask Web API)
|----requirements.txt   # Given to the Devops (List of Flask modules for Web API)
|----main.tf            # To be delivered by Devops (Terraform config file)
|----docker-compose.yml # To be delivered by Devops
|----Dockerfile         # To be delivered by Devops
|----cfn-template.yml   # To be delivered by Devops (Optional)
```