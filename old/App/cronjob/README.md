# GKEクラスタ作成
<pre>
$ gcloud container clusters create clst-pe-01 --preemptible --machine-type=f1-micro --num-nodes=3 --disk-size=10
</pre>

# cloudbuild
<pre>
$ gcloud builds submit --config cloudbuild.yaml .
</pre>

# Jobデプロイ
<pre>
$ kubectl apply -f k8s-cronjob.yaml
</pre>
