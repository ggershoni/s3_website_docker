# s3_website_docker
A docker containered command for running s3_website see: [https://github.com/laurilehmijoki/s3_website](https://github.com/laurilehmijoki/s3_website).  If you want to sync your [S3 website](http://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html) with a local directory keep reading.

## Running

This project is in Docker Hub so when you run it on the command line the image should be downloaded for you... if you need to build see below.

You will need to provide creds... these can be in exported to env.  You will also need to mount the directory with website into ```/website/_site``` when doing a push.

```
export S3_ID=<your AWS id>
export S3_SECRET=<your AWS secret>
export S3_BUCKET=<your S3 bucket>

docker run -e S3_ID -e S3_SECRET -e S3_BUCKET ggershoni/s3_website_docker cfg apply
docker run -e S3_ID -e S3_SECRET -e S3_BUCKET -v <dir with website on host>:/website/_site <docker image> push
```

## Building
Standard Docker process i.e.:

```
git clone https://github.com/ggershoni/s3_website_docker.git
cd s3_website_docker
docker build -t ggershoni\s3_website_docker .
```
### Don't Panic!
If during the build you see an error like:

```
[fail] Could not load the site: /s3_website.yml (No such file or directory)
```
That is because doing an "s3_website push" is easiest way to get s3_website to download required .jar but since no config info set yet, push will fail.  However now .jar is in image and running docker container will be fast.

