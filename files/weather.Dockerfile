FROM ubuntu:latest

RUN apt-get update
RUN apt-get install curl -y

EXPOSE 70

CMD ["curl", "wttr.in"]