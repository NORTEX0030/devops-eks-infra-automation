<h1 align="center">🚀 CI/CD Pipeline using Terraform & Amazon EKS 🛠️</h1>

<p align="center">
  <img src="https://readme-typing-svg.herokuapp.com/?lines=Automate+Infra+Deployment+with+Terraform;CI/CD+with+Jenkins+on+AWS;Provision+EKS+Cluster+Seamlessly&center=true&width=500&height=45">
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Terraform-v1.6+-blueviolet?style=flat&logo=terraform" />
  <img src="https://img.shields.io/badge/AWS-EKS-orange?style=flat&logo=amazonaws" />
  <img src="https://img.shields.io/badge/Jenkins-Automation-blue?style=flat&logo=jenkins" />
</p>

---
CICD-Terraform-EKS/
├── EKS/ # Terraform configs to create EKS cluster
├── jenkins-server/ # Terraform configs to create Jenkins EC2
├── README.md # This file
└── .gitignore # Ignoring sensitive/generated files

## 📌 Features

---

## 📌 Features

- 🔧 **Infrastructure-as-Code** with Terraform
- ☸️ **Amazon EKS Cluster** deployment
- ⚙️ **EC2 instance with Jenkins** and pre-installed DevOps tools (Terraform, kubectl, AWS CLI)
- 🔁 **CI/CD pipeline** automation from Jenkins to EKS
- ☁️ **Remote backend** using S3 for Terraform state

---

## 🧰 Prerequisites

- ✅ AWS Account with root access
- ✅ IAM access key & secret
- ✅ Installed: `Terraform`, `AWS CLI`, `kubectl`

---

## 🔐 Setup AWS Access

1. Log in to AWS Console as root.
2. Go to `IAM > Users > Security Credentials`.
3. Generate an **Access Key**.
4. Store the credentials securely:
   ```bash
   aws configure


🚀 Deployment Steps

1️⃣ Deploy Jenkins EC2 Server

cd jenkins-server/
terraform init
terraform apply

Jenkins will be installed automatically via user_data
It includes: Jenkins, Terraform, AWS CLI, kubectl

2️⃣ Deploy Amazon EKS Cluster

cd ../EKS/
terraform init
terraform apply

EKS cluster will be provisioned.
Ensure Jenkins has proper IAM permissions to interact with EKS.

🔁 CI/CD Automation Flow

graph TD
  Dev[Developer Push Code] --> GitHub
  GitHub --> Jenkins[Jenkins Build Trigger]
  Jenkins --> TerraformApply[Terraform Plan & Apply]
  TerraformApply --> AWS[AWS EKS + Resources]


🎯 Goals Achieved✅ IaC-based environment setup

✅ Real-world Jenkins + EKS pipeline

✅ Remote state management with S3

✅ Used Terraform modules for reusability


⚠️ Cleanup (Avoid AWS Charges)

# In jenkins-server and EKS folders
terraform destroy
Also delete the EC2 instance and S3 bucket manually if needed.

👨‍💻 Author
Nitesh Yadav
🌐 GitHub | 💼 LinkedIn


⭐️ If you find this useful, give the repo a star!

---

### ✅ Now Do This:
1. Save this as your `README.md`.
2. Push to your GitHub repo.
3. Add this project to your resume/portfolio with a link.

Let me know if you want:
- A matching project thumbnail image
- GitHub Actions CI/CD added
- GitHub Pages project site

Would you like me to add this `README.md` directly to your current repo folder too?
 
 ```
