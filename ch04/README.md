# ch04

## pod
<pre>
$ kubectl apply -f t01-pod.yaml 
pod/t01 created
$ kubectl get pods
NAME      READY     STATUS              RESTARTS   AGE
t01       0/1       ContainerCreating   0          8s
$ kubectl get pods
NAME      READY     STATUS    RESTARTS   AGE
t01       1/1       Running   0          3m
$ kubectl get pods -o wide
NAME      READY     STATUS    RESTARTS   AGE       IP         NODE                                          NOMINATED NODE
t01       1/1       Running   0          13m       10.x.x.x   gke-clst-ftst-01-default-pool-XXXXX-XXXXX   <none>
$ kubectl delete pod t01
pod "t01" deleted
$ kubectl get pods 
No resources found.
</pre>

## labels
<pre>
$ kubectl apply -f t03-labels.yaml 
pod/t03 created
$ kubectl get pods
NAME      READY     STATUS    RESTARTS   AGE
t03       1/1       Running   0          6m
$ kubectl get pods -l lvl1
NAME      READY     STATUS    RESTARTS   AGE
t03       1/1       Running   0          6m
$ kubectl get pods -l lvl1,lvl2
NAME      READY     STATUS    RESTARTS   AGE
t03       1/1       Running   0          7m
$ kubectl get pods -l lvl1,lvl2,lvl3
No resources found.
$ kubectl get pods -l lvl1=v1
NAME      READY     STATUS    RESTARTS   AGE
t03       1/1       Running   0          7m
</pre>
