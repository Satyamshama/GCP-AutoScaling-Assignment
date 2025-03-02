# GCP-AutoScaling-Assignment
#  GCP Auto-Scaling Terraform Deployment

This repository contains Terraform scripts to deploy a Virtual Machine (VM) on **Google Cloud Platform (GCP)** with **auto-scaling** based on CPU utilization. It also includes **firewall rules** and **IAM role configurations** for security.

---

##  Features
 Deploys a VM instance in GCP  
 Configures auto-scaling (scales up if CPU usage > 60%)  
 Implements firewall rules to allow SSH and HTTP/HTTPS  
 Uses Terraform for Infrastructure as Code (IaC)  
 Automatically installs `stress-ng` for CPU stress testing  

---

##  Prerequisites

Before you begin, make sure you have:

1️**Google Cloud Account** (Sign up at [console.cloud.google.com](https://console.cloud.google.com))  
2️ **Google Cloud SDK** installed ([Download here](https://cloud.google.com/sdk/docs/install))  
3️ **Terraform CLI** installed ([Install Guide](https://developer.hashicorp.com/terraform/tutorials/gcp-get-started/install-cli))  
4️**Billing Enabled** for your GCP project  

---

##  Setup & Deployment

### **Step 1: Clone the Repository**
```sh
git clone https://github.com/YOUR_USERNAME/GCP-AutoScaling-Assignment.git
cd GCP-AutoScaling-Assignment
