docker build -t 192.168.1.10:8443/echo-ip:latest .
docker push 192.168.1.10:8443/echo-ip
kubectl create deployment echo-ip --image=192.168.1.10:8443/echo-ip
kubectl expose deployment echo-ip --type=LoadBalancer --name=echo-ip --port=8080