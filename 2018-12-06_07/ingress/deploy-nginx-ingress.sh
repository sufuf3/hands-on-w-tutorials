sudo ifconfig enp0s8:0 172.17.8.101 netmask 255.255.255.0 broadcast 172.17.8.255
sudo ifconfig enp0s8:1 172.17.8.102 netmask 255.255.255.0 broadcast 172.17.8.255
sudo ifconfig enp0s8:2 172.17.8.103 netmask 255.255.255.0 broadcast 172.17.8.255
helm search nginx-ingress
helm install --name nginx-ingress --set "rbac.create=true,controller.service.externalIPs[0]=172.17.8.101,controller.service.externalIPs[1]=172.17.8.102,controller.service.externalIPs[2]=172.17.8.103” stable/nginx-ingress

# Look pod status
# kubectl get pods --all-namespaces -l app=nginx-ingress

# Delete nginx-ingress
# helm delete --purge nginx-ingress
