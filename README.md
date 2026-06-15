# Azure Home Lab

Cloud infrastructure lab built to mirror and extend my [DevOps Home Lab](https://github.com/gavin-alan/devops-homelab) on Azure. Built for learning, portfolio purposes, and bridging AWS expertise to Azure.

## Goal

Replicate and adapt the AWS-based DevOps pipeline to Azure — same application, same principles, different cloud. Demonstrates cross-cloud infrastructure competency.

## Planned Stack

- **Terraform** — Azure infrastructure provisioning with reusable modules (azurerm provider)
- **Azure Container Registry (ACR)** — private Docker image registry (equivalent to AWS ECR)
- **Azure App Service / ACI** — container orchestration (equivalent to AWS ECS)
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
- [ ] Phase 3: Container deployment (ACI or App Service)
- [ ] Phase 4: Azure AI Services + FastAPI /ask endpoint
- [ ] Phase 5: Azure Monitor + alerting

## Cross-Cloud Reference

| AWS | Azure | Purpose |
|-----|-------|---------|
| ECR | ACR | Container registry |
| ECS | ACI / App Service | Container orchestration |
| Bedrock | Azure AI Services | AI inference |
| S3 | Blob Storage | Object storage |
| CloudWatch | Azure Monitor | Observability |
| IAM OIDC | Azure AD Workload Identity | Keyless CI/CD auth |

## Live Resources

- Resource Group: `azure-homelab-rg` (East US)
- Container Registry: `gavinalanhomelab.azurecr.io`
- Image: `gavinalanhomelab.azurecr.io/devops-homelab:latest`

## Status

Phase 2 complete. Phase 3 in progress — container deployment to ACI.
