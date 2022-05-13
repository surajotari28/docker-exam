steps for docker exam

1) pulled dockerised drf project from github
2) created aws account downloaded AWS cli after configured it
3) then installed terraform & kubectl
4) then created provider.tf & cluster.tf and written scripts
5) then entered below commands terraform init
6) after Terraform has been successfully initialized then ran terraform plan
7) for interact with cluster, ran below command in terminal:
   aws eks --region us-east-1 update-kubeconfig --name my-eks-cluster
8) for getting worker nodes ran below command
   kubectl get nodes