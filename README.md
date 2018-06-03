# study-k8sOnGKE

## minicube

### ref
https://github.com/kubernetes/minikube
https://dev.classmethod.jp/cloud/minikube/

### Check
minikube --vm-driver=virtualbox start

## local ubuntu

### ref
https://cloud.google.com/kubernetes-engine/docs/quickstart?hl=ja

### SDK を初期化する
$ gcloud init

### 認証情報がローカル システムに保存されているアカウントのリストを表示する
$ gcloud auth list

### 有効な SDK 構成のプロパティのリストを表示する
$ gcloud config list

### 現在の Cloud SDK 環境と有効な SDK 構成に関する情報を表示する
$ gcloud info

### kubectl コマンドライン ツールをインストールする
$ gcloud components install kubectl

### デフォルトのプロジェクトの設定
$ gcloud config set project [PROJECT_ID]

### デフォルトのコンピューティング ゾーンの設定
$ gcloud config set compute/zone asia-northeast1-a

### Kubernetes Engine クラスタの作成
$ gcloud container clusters create [CLUSTER_NAME]

### クラスタの認証情報を取得する
$ gcloud container clusters get-credentials [CLUSTER_NAME]

## gcloud @ Cloud Shell

### gcloud および kubectl 認証情報を設定する
gcloud container clusters get-credentials cluster-1 --zone asia-northeast1-a

### サービスを作成する
kubectl create -f xxxx-service.yaml

### レプリケーション コントローラを作成する
kubectl create -f xxxx-controller.yaml

### Show
```
$ kubectl get pods
NAME                 READY     STATUS              RESTARTS   AGE
xxxxx-xxxxxx-jm8x8   0/1       ContainerCreating   0          12s

$ kubectl get rc
NAME           DESIRED   CURRENT   READY     AGE
xxxxx-xxxxxx   1         1         1         19m

$ kubectl get svc
NAME           TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)    AGE
kubernetes     ClusterIP   xx.xx.xxx.x    <none>        443/TCP    52m
xxxxx-xxxxxx   ClusterIP   xx.xx.xxx.xx   <none>        6379/TCP   25m
```

### 外部 IP を見つける
kubectl get services --watch
