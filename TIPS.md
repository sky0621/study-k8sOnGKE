## TIPS
### 動作確認用プリエンプティブクラスタ作成
<pre>
$ gcloud container clusters create clst-ftst-01 --preemptible --machine-type=f1-micro --num-nodes=3 --disk-size=10
</pre>
