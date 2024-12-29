# AWS DevOps Infrastructure Automation with Terraform, CI/CD, and Nginx Deployment

## **Project Objectives**

The goal of this project is to build an automated AWS infrastructure using Terraform to support DevOps workflows. The project includes:

1. Provisioning AWS infrastructure with Terraform modules (e.g., VPC, EC2, Security Groups).
2. Deploying a web application (Nginx) on an EC2 instance.
3. Ensuring the infrastructure supports multiple environments (dev, staging, production).
4. Implementing environment-specific configurations using variables and best practices.
5. Using environment variables for credentials (no hardcoding).
6. Preparing for CI/CD integration to automate Terraform workflows.

## **Checklist**

### **Infrastructure Setup**
- [x] Create a module for the VPC that includes all required parts (e.g., NAT Gateway, route tables, etc.).
- [ ] Create a module for the EC2 instance that runs a web application (Nginx).
- [ ] Ensure the EC2 instance is accessible via the public IP address.

### **Environment-Specific Configurations**
- [ ] Configure Terraform to support at least three environments: dev, staging, and production.
- [ ] Use separate `terraform.tfvars` files for each environment to specify environment-specific variables (e.g., CIDR block, instance type).
- [ ] Ensure each environment works independently without conflicts.

### **Best Practices and Enhancements**
- [ ] Use environment variables for all sensitive data (e.g., AWS credentials) to avoid hardcoding.
- [ ] Ensure proper folder/directory strategy is followed for modules and environment configurations.
- [ ] Add error handling and validation for Terraform variables.
- [ ] Document all modules and their inputs/outputs in this README.

### **CI/CD Pipeline**
- [ ] Create a CI/CD pipeline to automate Terraform workflows (e.g., using GitHub Actions, GitLab CI, or Jenkins).
- [ ] Ensure the pipeline runs `terraform plan` and `terraform apply` as part of the workflow.

### **Bonus**
- [ ] Write Terratests for the modules to validate infrastructure (in Golang or Python).
- [ ] Create a detailed README for the project to allow others to reproduce the work.
- [ ] Commit the project to a GitHub repository, including useful files like `.gitignore` and pre-commit hooks.

## **Essential Things Already Completed but Not Fully Committed**

1. **Key Pair Management**:

   - Terraform generates an SSH key pair (`tls_private_key`), but ensure the private key (`my-key.pem`) is saved securely and not exposed in the repository.

2. **Environment Setup**:

   - The `dev` environment is functional, with outputs for `vpc_id` and `public_subnet_id`.
   - Confirm and commit the outputs into Terraform configuration for future use.

3. **Nginx Deployment**:

   - The `user_data` script installs and starts Nginx. Ensure this script is documented and tested in all environments.

4. **Dynamic IP Management**:

   - A PowerShell script dynamically fetches the current public IP of the machine and sets it as the `allowed_ssh_ip` variable. The script then runs `terraform plan` and `terraform apply` automatically.

   **PowerShell Script Example:**

   ```powershell
   $my_ip = (Invoke-WebRequest -Uri "http://ifconfig.me").Content.Trim() + "/32"
   $env:TF_VAR_allowed_ssh_ip = $my_ip
   terraform plan
   terraform apply
   ```

## **How to Use This Project**

1. Clone the repository and navigate to the desired environment (`environments/dev`).
2. Set up your AWS credentials as environment variables.
3. Initialize Terraform:
   ```bash
   terraform init
   ```
4. Review the plan:
   ```bash
   terraform plan
   ```
5. Apply the configuration:
   ```bash
   terraform apply
   ```
6. Access the EC2 instance and verify that Nginx is running by visiting `http://<instance-public-ip>` in your browser.

---

This checklist and README should guide you through completing and documenting your project efficiently. Let me know if you need to expand or modify any section!

