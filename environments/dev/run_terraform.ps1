$my_ip = (Invoke-WebRequest -Uri "http://ifconfig.me").Content.Trim() + "/32"
$env:TF_VAR_allowed_ssh_ip = $my_ip

# Run Terraform commands
terraform plan
terraform apply
