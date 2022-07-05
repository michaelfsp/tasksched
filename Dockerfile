FROM node:10.24.1
RUN apt-get update \
	&& apt-get install git make taskwarrior -y \
	&& rm -rf /var/lib/apt/lists/*
WORKDIR app
RUN git clone https://github.com/michaelfsp/tasksched.git .
EXPOSE 5000
RUN make build
CMD ["./server.js"]
