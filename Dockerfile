FROM ubuntu:latest
LABEL Name=clangtask Version=0.0.1
RUN apt-get -y update && apt-get install -y
RUN apt-get -y install clang nano net-tools inetutils-ping
WORKDIR /root/clsort
COPY CLsort.cpp .
RUN clang++ CLsort.cpp -o CLsort
CMD ["./CLsort"]