## 設定
### 現在の認証コンテキスト
<pre>
$ kubectl config current-context
gke_【GCPプロジェクト名】_asia-northeast1-c_【GKEクラスタ名】
</pre>

### 認証コンテキスト一覧参照
<pre>
$ kubectl config view
</pre>

### 認証コンテキストを「minikube」に変更
<pre>
$ kubectl config use-context minikube
Switched to context "minikube".
</pre>
