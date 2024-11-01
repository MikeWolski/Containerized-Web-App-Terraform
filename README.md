# Containerized-Web-App-Terraform

Objective

The goal of this project is to build, automate, and scale the deployment of a containerized web application using Azure Kubernetes Service (AKS) and Azure Container Registry (ACR), integrating serverless automation and CI/CD pipeline management via Azure DevOps. Additionally, the project will incorporate DevOps principles such as Infrastructure-as-Code (IaC), monitoring, and automated scaling.

Project Components and Architecture

1. Containerized Web Application:

- A simple web application (Node.js, Python, or similar) will be containerized using Docker and stored in Azure Container Registry (ACR).
    - You can build your own or find a pre-built image on docker hub.
    - Feel free to use Microsoft's example .NET or ASP.NET samples.Links to an external site.
- The application will be managed using Azure Kubernetes Service (AKS), which will allow for scalable deployment.

2. Serverless Automation:

- Use Azure Functions to automate triggers, such as scaling AKS clusters based on load or sending notifications when specific thresholds are met.
- Implement automated actions for cluster monitoring, such as restarting failing pods or sending alerts.

3. CI/CD Pipeline:

- Set up a CI/CD pipeline using Azure DevOps for continuous integration and continuous delivery. This pipeline will automate the build, testing, and deployment of the application to the Kubernetes cluster.
- GitHub or Azure Repos will be used as the source code repository.
- Integrate Terraform or Bicep for Infrastructure-as-Code (IaC) to provision AKS and ACR automatically.

4. Monitoring and Alerts:

- Configure Azure Monitor and Azure Log Analytics to track performance metrics such as CPU usage, memory usage, and network latency for the Kubernetes cluster.
- Set up alerts using Azure Monitor for notifications via email or other channels (e.g., Slack, Teams) when specific events or thresholds occur.

Final Deliverables

1. Containerized Web Application: A fully functional web application, containerized and stored in Azure Container Registry.
2. Kubernetes Deployment: The application deployed on a scalable AKS cluster with proper networking and security.
3. CI/CD Pipeline: Fully automated Azure DevOps CI/CD pipeline that handles code changes, builds, and deployment.
4. Serverless Automation: Azure Functions to automate specific tasks like scaling and pod monitoring.
5. Monitoring and Alerts: A comprehensive monitoring and alerting setup using Azure Monitor, with email or Slack notifications.
6. Documentation: Detailed documentation outlining the setup, architecture, and any IaC (e.g., Terraform/Bicep scripts) used to provision resources.

Stretch Goals (Optional):

- Implement Blue/Green or Canary Deployment strategies using Azure DevOps for the AKS environment.
- Integrate Secrets Management using Azure Key Vault for storing sensitive information like API keys and credentials.
- Set up advanced network security using Azure Application Gateway with Web Application Firewall (WAF).