```
docker build -t react-image-prod .
```

```
docker run -d --rm -p 80:80 --name react-app-prod react-image-prod
```

```
kubectl apply -f deployment.yaml
kubectl get pods
kubectl get services
kubectl delete service,deployment my-react-app
```