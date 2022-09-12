UB-test Documentation

git clone https://github.com/LevKesha/UB_test.git

az login 

edit 'providers.tf' and 'variables.tf' accordingly
(Subscription ID, Service Principal, etc.)

cd UB_test/TF

terraform init 

terraform plan -out main.tfplan 

terraform apply main.tfplan

az aks get-credentials --resource-group ub-rg --name k8s_cl_ub

cd ..

kubectl apply -f webapi.yaml

kubectl get svc

use the <external_ip_address> in the table with port 5000 to reach the app's homepage using web browser.

API Documentation: 

http://{ip}:5000 - homepage 

http://{ip}:5000/get - returns all functions (GET method)

http://{ip}:5000/post?name={name} - adds new function to list (POST method)

http://{ip}:5000/delete?name={name} - deletes function by name (POST method)

