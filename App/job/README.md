# GKEクラスタ作成
<pre>
$ gcloud container clusters create clst-pe-01 --preemptible --machine-type=f1-micro --num-nodes=3 --disk-size=10
</pre>

# cloudbuild
<pre>
$ gcloud builds submit --config cloudbuild.yaml .
Creating temporary tarball archive of 6 file(s) totalling 1.1 KiB before compression.
Uploading tarball of [.] to [gs://【自分のGCPプロジェクトID】_cloudbuild/source/1555729822.87-b0838a87a942473587f6ac9800f4a23e.tgz]
Created [https://cloudbuild.googleapis.com/v1/projects/【自分のGCPプロジェクトID】/builds/51ee4caa-7741-47ca-b4a6-52b8f46e7906].
Logs are available at [https://console.cloud.google.com/gcr/builds/51ee4caa-7741-47ca-b4a6-52b8f46e7906?project=255590118058].
-------------------------------------------------------------------------------------------- REMOTE BUILD OUTPUT ---------------------------------------------------------------------------------------------
starting build "51ee4caa-7741-47ca-b4a6-52b8f46e7906"

FETCHSOURCE
Fetching storage object: gs://【自分のGCPプロジェクトID】_cloudbuild/source/1555729822.87-b0838a87a942473587f6ac9800f4a23e.tgz#1555729823896966
Copying gs://【自分のGCPプロジェクトID】_cloudbuild/source/1555729822.87-b0838a87a942473587f6ac9800f4a23e.tgz#1555729823896966...
/ [1 files][  882.0 B/  882.0 B]                                                
Operation completed over 1 objects/882.0 B.                                      
BUILD
Already have image (with digest): gcr.io/cloud-builders/docker
Sending build context to Docker daemon  7.168kB
Step 1/12 : FROM golang:1.12.4-alpine3.9 as build-step
1.12.4-alpine3.9: Pulling from library/golang
Digest: sha256:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Status: Downloaded newer image for golang:1.12.4-alpine3.9
 ---> b97a72b8e97d
Step 2/12 : RUN apk add --update --no-cache ca-certificates git
 ---> Running in 622fe1f0e10a
fetch http://dl-cdn.alpinelinux.org/alpine/v3.9/main/x86_64/APKINDEX.tar.gz
fetch http://dl-cdn.alpinelinux.org/alpine/v3.9/community/x86_64/APKINDEX.tar.gz
(1/6) Installing nghttp2-libs (1.35.1-r0)
(2/6) Installing libssh2 (1.8.2-r0)
(3/6) Installing libcurl (7.64.0-r1)
(4/6) Installing expat (2.2.6-r0)
(5/6) Installing pcre2 (10.32-r1)
(6/6) Installing git (2.20.1-r0)
Executing busybox-1.29.3-r10.trigger
OK: 20 MiB in 21 packages
Removing intermediate container 622fe1f0e10a
 ---> 2bc9506d03bf
Step 3/12 : RUN mkdir /go-app
 ---> Running in c0caebf75b7f
Removing intermediate container c0caebf75b7f
 ---> 23219c0b18fb
Step 4/12 : WORKDIR /go-app
 ---> Running in c9563c85e7e6
Removing intermediate container c9563c85e7e6
 ---> 15491d798ee3
Step 5/12 : COPY go.mod .
 ---> a2ac7fb7cb2f
Step 6/12 : COPY go.sum .
 ---> 111ee2c3a826
Step 7/12 : RUN go mod download
 ---> Running in da2fa7ccb428
go: finding github.com/google/uuid v1.1.1
Removing intermediate container da2fa7ccb428
 ---> 368c0e44b172
Step 8/12 : COPY . .
 ---> e7a585e4471c
Step 9/12 : RUN CGO_ENABLED=0 go build -o /go/bin/go-app
 ---> Running in fa8495360e82
Removing intermediate container fa8495360e82
 ---> c29c83072110
Step 10/12 : FROM scratch
 ---> 
Step 11/12 : COPY --from=build-step /go/bin/go-app /go/bin/go-app
 ---> e9cbc9d4b48e
Step 12/12 : ENTRYPOINT ["/go/bin/go-app"]
 ---> Running in 5b3661cc8902
Removing intermediate container 5b3661cc8902
 ---> cde88bd66bac
Successfully built cde88bd66bac
Successfully tagged gcr.io/【自分のGCPプロジェクトID】/go-app-job:latest
PUSH
Pushing gcr.io/【自分のGCPプロジェクトID】/go-app-job
The push refers to repository [gcr.io/【自分のGCPプロジェクトID】/go-app-job]
2857f167b8d5: Preparing
2857f167b8d5: Pushed
latest: digest: sha256:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx size: 528
DONE
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

ID                                    CREATE_TIME                DURATION  SOURCE                                                                                  IMAGES                                    STATUS
51ee4caa-7741-47ca-b4a6-52b8f46e7906  2019-04-20T03:10:25+00:00  30S       gs://【自分のGCPプロジェクトID】_cloudbuild/source/1555729822.87-b0838a87a942473587f6ac9800f4a23e.tgz  gcr.io/【自分のGCPプロジェクトID】/go-app-job (+1 more)  SUCCESS
</pre>

# Jobデプロイ
<pre>
$ gcloud builds submit --config cloudbuild.yaml .
</pre>
