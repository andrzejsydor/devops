
Display information about the Deployment:
```
kubectl get deployments hello-world
kubectl describe deployments hello-world
```

Display information about your ReplicaSet objects:
```
kubectl get replicasets
kubectl describe replicasets
```

Display information about the Service:
```
 kubectl get services my-service
```

Display detailed information about the Service:
```
kubectl describe services my-service
```

```
curl http://<external-ip>:<port>
```
eg.
`curl localhost:80`
