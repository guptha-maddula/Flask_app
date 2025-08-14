

# Flask CI/CD with Docker and AWS EC2

## 📌 Overview
This project shows how to deploy a Flask app to AWS EC2 using:
- **Docker** for containerization
- **AWS ECR** for image storage
- **GitHub Actions** for CI/CD automation

Whenever you push to the `main` branch, the workflow will:
1. Build a Docker image of the Flask app
2. Push it to AWS ECR
3. Deploy it on an EC2 instance

---

## 🛠 Setup

### 1️⃣ Prerequisites
- AWS account
- IAM User with:
  - `AmazonEC2FullAccess`
  - `AmazonEC2ContainerRegistryFullAccess`
- EC2 instance with Docker installed
- ECR repository created
- Security Group allowing ports `22` and `5000` (or `80`)

---

### 2️⃣ Add GitHub Secrets
In your repository settings → Secrets and Variables → Actions, add:
- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`
- `AWS_REGION`
- `EC2_HOST` (Public IP of EC2)
- `EC2_SSH_KEY` (Private key for SSH)

---

### 3️⃣ Deploy
Push code to `main`:
```bash
git add .
git commit -m "Update"
git push origin main
````

The GitHub Actions pipeline will build, push, and deploy automatically.

---

## 🌐 Access the App

```
http://<EC2_PUBLIC_IP>:5000
```

---

## 🚀 Future Ideas

* Add Auto Scaling
* Use Load Balancer
* Switch to ECS Fargate

