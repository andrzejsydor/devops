# Cheatsheet

[https://kubernetes.io/docs/reference/kubectl/cheatsheet/](https://kubernetes.io/docs/reference/kubectl/cheatsheet/)

# helpful

## exec to container filtered by label

`
kubectl exec -it $(kubectl get pods -l app=webserver -o name) -- bash
`

## run command on container

```
kubectl exec $(kubectl get pod -l app=webserver -n <ns> -o name) -c <container> -- ls /home
kubectl exec $(kubectl get pod -l app=webserver -n <ns> -o jsonpath="{.items[0].metadata.name}") -c <container> -- ls /home
```

## Show metrics for a given pod and its containers sorted by cpu|memory
`
kubectl top pod POD_NAME --containers --sort-by=cpu
`

## Show all storage classes
`
kubectl get storageclass --all-namespaces
`

### [List all services in the namespace](https://kubernetes.io/docs/reference/kubectl/cheatsheet/#viewing-finding-resources)
```
kubectl get svc
kubectl get svc -n <namespace>
```

## Scale up/down
```
kubectl scale deployment/<name> -n <namespace> --replicas=0
kubectl scale deployment/<name> -n <namespace> --replicas=1
```
