# Cheatsheet

[https://kubernetes.io/docs/reference/kubectl/cheatsheet/](https://kubernetes.io/docs/reference/kubectl/cheatsheet/)

# helpful

## exec to container filtered by label

`
kubectl exec -it $(kubectl get pods -l app=webserver -o name) -- bash
`

