## 詳細
### Pod
<pre>
$ kubectl describe pods t03
Name:               t03
Namespace:          default
Priority:           0
PriorityClassName:  <none>
Node:               gke-clst-ftst-01-default-pool-XXXXX-XXXXX/10.x.x.x
Start Time:         Mon, 15 Apr 2019 09:01:00 +0900
Labels:             lvl1=v1
                    lvl2=v2
Annotations:        kubectl.kubernetes.io/last-applied-configuration={"apiVersion":"v1","kind":"Pod","metadata":{"annotations":{},"labels":{"lvl1":"v1","lvl2":"v2"},"name":"t03","namespace":"default"},"spec":{"containers...
                    kubernetes.io/limit-ranger=LimitRanger plugin set: cpu request for container nx-ctrl
Status:             Running
IP:                 10.y.y.y
Containers:
  nx-ctrl:
    Container ID:   docker://1b6c0c1600506918fd5b2b492029d379e93c1d5be6e4cb5517a875b2b51ae069
    Image:          nginx:1.12
    Image ID:       docker-pullable://nginx@sha256:72daaf46f11cc753c4eab981cbf869919bd1fee3d2170a2adeac12400f494728
    Port:           <none>
    Host Port:      <none>
    State:          Running
      Started:      Mon, 15 Apr 2019 09:01:03 +0900
    Ready:          True
    Restart Count:  0
    Requests:
      cpu:        100m
    Environment:  <none>
    Mounts:
      /var/run/secrets/kubernetes.io/serviceaccount from default-token-fnsln (ro)
Conditions:
  Type              Status
  Initialized       True 
  Ready             True 
  ContainersReady   True 
  PodScheduled      True 
Volumes:
  default-token-fnsln:
    Type:        Secret (a volume populated by a Secret)
    SecretName:  default-token-fnsln
    Optional:    false
QoS Class:       Burstable
Node-Selectors:  <none>
Tolerations:     node.kubernetes.io/not-ready:NoExecute for 300s
                 node.kubernetes.io/unreachable:NoExecute for 300s
Events:
  Type    Reason     Age   From                                                  Message
  ----    ------     ----  ----                                                  -------
  Normal  Scheduled  18m   default-scheduler                                     Successfully assigned default/t03 to gke-clst-ftst-01-default-pool-XXXXX-XXXXX
  Normal  Pulled     18m   kubelet, gke-clst-ftst-01-default-pool-f90bf79c-frq7  Container image "nginx:1.12" already present on machine
  Normal  Created    18m   kubelet, gke-clst-ftst-01-default-pool-f90bf79c-frq7  Created container
  Normal  Started    18m   kubelet, gke-clst-ftst-01-default-pool-f90bf79c-frq7  Started container
</pre>
