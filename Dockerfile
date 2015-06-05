FROM ruby:latest

RUN DEBIAN_FRONTEND=noninteractive apt-get update -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y default-jdk

RUN gem install s3_website

COPY s3_website.yml /s3_website.yml

ENV _JAVA_OPTIONS="-Xmx2g -XX:-UseConcMarkSweepGC"

#ENTRYPOINT ["s3_website"] 
