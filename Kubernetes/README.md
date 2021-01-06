# Cheatsheet

[https://kubernetes.io/docs/reference/kubectl/cheatsheet/](https://kubernetes.io/docs/reference/kubectl/cheatsheet/)

# helpful

## exec to container filtered by label

`
kubectl exec -it $(kubectl get pods -l app=webserver -o name) -- bash
`

## Show metrics for a given pod and its containers sorted by cpu|memory
`
kubectl top pod POD_NAME --containers --sort-type=cpu
`

