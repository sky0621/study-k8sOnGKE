# Workloads
## Pod
- 最小単位
- １つ以上のコンテナで構成
- 同じPod内はlocalhostでつながる
- Pod内は１NIC

### リソース間の関係
<pre>
「Deployment」
　　「ReplicaSet」
　　　　「Pod」
</pre>
<pre>
「CronJob」
　　「Job」
　　　　「Pod」
</pre>
<pre>
「DaemonSet」
　　「Pod」
</pre>
<pre>
「StatefulSet」
　　「Pod」
</pre>

### デザインパターン
#### サイドカーパターン
補助機能追加コンテナを内包

#### アンバサダーパターン
「CloudSQL Proxy」等、外部接続を代理中継するコンテナを内包

#### アダプタパターン
対「Prometheus」等、外部からの要求に対応するデータ変換を行うコンテナを内包


