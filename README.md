<h1 align="center">🚀 CI/CD Pipeline using Terraform & Amazon EKS 🛠️</h1>

<p align="center">
  <img src="https://readme-typing-svg.herokuapp.com/?lines=Automate+Infra+Deployment+with+Terraform;CI/CD+with+Jenkins+on+AWS;Provision+EKS+Cluster+Seamlessly&center=true&width=500&height=45">
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Terraform-v1.6+-blueviolet?style=flat&logo=terraform" />
  <img src="https://img.shields.io/badge/AWS-EKS-orange?style=flat&logo=amazonaws" />
  <img src="https://img.shields.io/badge/Jenkins-Automation-blue?style=flat&logo=jenkins" />
  <img src="https://img.shields.io/github/stars/NORTEX0030/devops-eks-infra-automation?style=social" alt="GitHub stars"/>
 />
</p>

---

###  📁 Project Structure

```bash
.
├── EKS/                          # Complete EKS cluster provisioning
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── provider.tf
│   ├── data.tf
│   ├── backend.tf
│   ├── versions.tf
│   ├── kubernetes.tf
│   ├── Jenkinsfile
│   └── configuration-files/
│       ├── deployment.yaml
│       └── service.yaml
├── jenkins-server/              # Jenkins EC2-based automation
│   ├── main.tf
│   ├── provider.tf
│   ├── variables.tf
│   ├── data.tf
│   ├── backend.tf
│   └── jenkins-install.sh
├── README.md
└── .gitignore
---
'''



### ✅ Objectives

- Automate the provisioning of a **secure EKS cluster** on AWS
- Launch an EC2 instance and bootstrap **Jenkins** with all required tools
- Configure **CI/CD pipeline** using Jenkins to deploy applications to EKS
- Use **Terraform modules** and **YAML manifests** for end-to-end infra and app setup

---

## 🧰 Tech Stack

| Tool       | Purpose                          |
|------------|----------------------------------|
| Terraform  | Infrastructure provisioning      |
| AWS        | Cloud infrastructure provider    |
| EC2        | Host Jenkins server              |
| EKS        | Kubernetes cluster               |
| Jenkins    | CI/CD engine                     |
| kubectl    | K8s CLI to manage deployments    |
| GitHub     | Version control and repo hosting |

---

### ⚙️ Prerequisites

Before getting started, make sure you have:

- An AWS Account (with sufficient permissions)
- AWS CLI installed and configured
- Terraform CLI installed
- `kubectl` installed
- Git and GitHub access

### 🔐 Creating AWS Root Access Keys

> _**Note:** Use IAM roles for production environments. Root credentials are for testing/learning only._

1. Log in to AWS as root user.
2. Go to **IAM → Users → Security Credentials** tab.
3. Click on **Create access key**.
4. Download the `.csv` file for CLI use.

---

## 🚀 Deployment Steps

### 1. Provision Jenkins Server (EC2)

This step provisions an EC2 instance that automatically installs Jenkins, Terraform, AWS CLI, and `kubectl`.

```bash
cd jenkins-server
terraform init
terraform apply -auto-approve
'''

###  📝 Jenkins will be installed using jenkins-install.sh (user-data) and exposed on port 8080.

2. Provision Amazon EKS Cluster
Once Jenkins is running, deploy the EKS infrastructure from your local machine or automate it through Jenkins:
bash'''
cd EKS
terraform init
terraform apply -auto-approve
'''

After successful provisioning:

```bash
aws eks --region <your-region> update-kubeconfig --name my-eks-cluster
kubectl get nodes
'''

### 📦 Kubernetes Application Deployment

```bash
YAML manifests are available under:
EKS/configuration-files/
Apply them using:kubectl apply -f configuration-files/deployment.yaml
kubectl apply -f configuration-files/service.yaml
'''

### 🧪 CI/CD Flow (Optional Jenkins Pipeline)

Integrate GitHub and Jenkins with a Jenkinsfile in the EKS directory for automated deployments on push events.


🙌 Author
Created with 💻 and ☁️ by NORTEX0030
Feel free to fork, star, and contribute!


