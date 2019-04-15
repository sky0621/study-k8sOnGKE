## リソース使用量
### Node
<pre>
$ kubectl top node
NAME                                          CPU(cores)   CPU%      MEMORY(bytes)   MEMORY%   
gke-clst-ftst-01-default-pool-XXXXX-XXXXX   42m          4%        394Mi           67%       
gke-clst-ftst-01-default-pool-XXXXX-YYYYY   44m          4%        347Mi           59%     
</pre>

### Pod
<pre>
$ kubectl top pod
NAME      CPU(cores)   MEMORY(bytes)   
t03       0m           2Mi             
</pre>
