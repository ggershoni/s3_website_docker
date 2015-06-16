# s3_website_docker
A docker containered command for running s3_website see: https://github.com/laurilehmijoki/s3_website

```
export S3_ID=<your AWS id>
export S3_SECRET=<your AWS secret>
export S3_BUCKET=<your S3 bucket>

docker run -e S3_ID -e S3_SECRET -e S3_BUCKET -v <dir with website on host>:/website/_site <docker image> push
```
