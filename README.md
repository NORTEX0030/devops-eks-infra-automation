<h1 align="center">🚀 CI/CD Pipeline using Terraform & Amazon EKS 🛠️</h1>

<p align="center">
  <img src="https://readme-typing-svg.herokuapp.com/?lines=Automate+Infra+Deployment+with+Terraform;CI/CD+with+Jenkins+on+AWS;Provision+EKS+Cluster+Seamlessly&center=true&width=500&height=45">
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Terraform-v1.6+-blueviolet?style=flat&logo=terraform" />
  <img src="https://img.shields.io/badge/AWS-EKS-orange?style=flat&logo=amazonaws" />
  <img src="https://img.shields.io/badge/Jenkins-Automation-blue?style=flat&logo=jenkins" />
  <img src="https://img.shields.io/github/stars/NORTEX0030/CICD-Terraform-EKS?style=social" />
</p>

---

## 📁 Repository Structure

```bash
CICD-Terraform-EKS/
│
├── EKS/              # Terraform code to provision EKS cluster
└── jenkins-server/   # Terraform code to launch EC2 instance for Jenkins
📌 Project Overview
This project provisions a complete infrastructure on AWS using Terraform, where:

A Jenkins EC2 instance is deployed and configured using user_data.

Jenkins automates CI/CD pipelines.

Jenkins triggers creation and deployment of an Amazon EKS cluster.

All resources are managed as Infrastructure-as-Code (IaC).

✅ Prerequisites
Make sure you have:

✅ An AWS Account

✅ AWS Root IAM Access Keys configured (~/.aws/credentials)

✅ Terraform CLI (>= 1.6)

✅ AWS CLI installed (>= v2)

✅ A GitHub repo clone of this project

🔐 Generating AWS Access Keys (Root)
⚠️ Root access is powerful — use only for testing. Prefer IAM users in production.

bash
Copy
Edit
1. Go to AWS Console → IAM
2. Click on your root user → "Security credentials"
3. Create access key → Download the .csv file
4. Configure credentials locally:
   aws configure
💻 Deploy Jenkins EC2 Server
Go into the Jenkins setup directory:

bash
Copy
Edit
cd jenkins-server
Edit backend.tf with your S3 bucket name (for remote state).

Initialize and apply Terraform:

bash
Copy
Edit
terraform init
terraform apply
☁️ This will:

Create a VPC, subnet, security groups

Launch an EC2 with Jenkins + Terraform + AWS CLI + kubectl

☸️ Provision EKS Cluster (via Jenkins Pipeline)
Go to Jenkins GUI on your EC2's public IP (port 8080)

Create a pipeline that triggers terraform apply in the EKS/ folder

Configure GitHub Webhooks to trigger pipeline on push

🎯 Expected Outcome
✅ Fully automated CI/CD pipeline with Jenkins
✅ On-demand EKS cluster provisioning
✅ AWS resources deployed via Terraform
✅ Secure and modular infrastructure code

📸 Screenshots
Jenkins Dashboard	EKS Provisioned
	

🔐 Security Note
Add .terraform/, .tfstate, and credentials to .gitignore:

gitignore
Copy
Edit
.terraform/
*.tfstate
*.tfstate.*
aws_credentials.csv
📊 GitHub Stats
<p align="center"> <img src="https://github-readme-stats.vercel.app/api?username=NORTEX0030&show_icons=true&theme=github_dark" /> </p>
🤝 Connect with Me
🧑‍💼 LinkedIn

🌐 Portfolio

✉️ Email: yadavnitesh0030@gmail.com

<p align="center"><i>Made with ❤️ by Nitesh Yadav</i></p> ```
