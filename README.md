# Azure Home Lab

Cloud infrastructure lab built to mirror and extend my [DevOps Home Lab](https://github.com/gavin-alan/devops-homelab) on Azure. Built for learning, portfolio purposes, and bridging AWS expertise to Azure.

## Goal

Replicate and adapt the AWS-based DevOps pipeline to Azure — same application, same principles, different cloud. Demonstrates cross-cloud infrastructure competency.

## Architecture

Code is pushed to GitHub, Docker image is built locally and pushed to ACR, Terraform provisions ACI which pulls the image from ACR and runs the FastAPI app with a public endpoint. Environment variables make the app cloud-aware at runtime without any code changes.

## Planned Stack

- **Terraform** — Azure infrastructure provisioning with reusable modules (azurerm provider)
- **Azure Container Registry (ACR)** — private Docker image registry (equivalent to AWS ECR)
- **Azure Container Instances (ACI)** — serverless container runtime (equivalent to AWS ECS)
- **Azure AI Services** — AI inference endpoint (equivalent to AWS Bedrock)
- **Azure Blob Storage** — document storage (equivalent to AWS S3)
- **Azure Monitor** — metrics, alerts, and log aggregation (equivalent to AWS CloudWatch)
- **GitHub Actions** — CI/CD pipeline with OIDC authentication (no stored credentials)
- **Docker** — app containerization
- **FastAPI** — Python REST API (same app as DevOps Home Lab)
- **Prometheus + Grafana** — monitoring dashboards

## Phases

- [x] Phase 1: Terraform scaffold + Azure provider + resource group
- [x] Phase 2: ACR + Docker image pushed
- [x] Phase 3: Container deployment to ACI with environment variables
- [ ] Phase 4: Azure AI Services + FastAPI /ask endpoint
- [ ] Phase 5: Azure Monitor + alerting

## Cross-Cloud Reference

| AWS | Azure | Purpose |
|-----|-------|---------|
| ECR | ACR | Container registry |
| ECS | ACI | Container orchestration |
| Bedrock | Azure AI Services | AI inference |
| S3 | Blob Storage | Object storage |
| CloudWatch | Azure Monitor | Observability |
| IAM OIDC | Azure AD Workload Identity | Keyless CI/CD auth |

## Live Endpoints

- App: http://gavinalan-homelab.eastus.azurecontainer.io:8000
- Health: http://gavinalan-homelab.eastus.azurecontainer.io:8000/health
- Docs: http://gavinalan-homelab.eastus.azurecontainer.io:8000/docs

> Note: instance may be stopped periodically to manage costs — endpoints available on request.

## Live Resources

- Resource Group: `azure-homelab-rg` (East US)
- Container Registry: `gavinalanhomelab.azurecr.io`
- Image: `gavinalanhomelab.azurecr.io/devops-homelab:latest`
- Container: `azure-homelab-container` (ACI)

## Status

Phase 3 complete. FastAPI app running in Azure ACI, pulling from ACR, cloud-aware via environment variables.
