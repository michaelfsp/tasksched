FROM node:12.7.0
RUN apt-get update \
	&& apt-get install make taskwarrior -y \
	&& rm -rf /var/lib/apt/lists/*
COPY . /app
WORKDIR app
EXPOSE 5000
RUN make build
CMD ["./server.js"]
