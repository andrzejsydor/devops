# Kubernetes:
[https://kubernetes.io/docs/tasks/run-application/run-single-instance-stateful-application/](https://kubernetes.io/docs/tasks/run-application/run-single-instance-stateful-application/)

## How to run
```
kubectl apply -f mysql-pv.yaml

kubectl apply -f mysql-deployment.yaml
```

### Display information about the Deployment:

`kubectl describe deployment mysql`

### List the pods created by the Deployment:

`kubectl get pods -l app=mysql`

### Inspect the PersistentVolumeClaim:

`kubectl describe pvc mysql-pv-claim`

## Accessing the MySQL instance

`kubectl run -it --rm --image=mysql:5.6 --restart=Never mysql-client -- mysql -h mysql -ppassword`

## Deleting a deployment:
```
kubectl delete deployment,svc mysql
kubectl delete pvc mysql-pv-claim
kubectl delete pv mysql-pv-volume
```

