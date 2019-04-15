## 一覧
### Pod
<pre>
$ kubectl get pods
NAME      READY     STATUS    RESTARTS   AGE
t03       1/1       Running   0          15m
$
$ kubectl get pods -o wide
NAME      READY     STATUS    RESTARTS   AGE       IP          NODE                                          NOMINATED NODE
t03       1/1       Running   0          16m       10.x.x.x   gke-clst-ftst-01-default-pool-XXXXX-XXXXX   <none>
$
$ kubectl get pods -l lvl1,lvl2
NAME      READY     STATUS    RESTARTS   AGE
t03       1/1       Running   0          17m
</pre>
