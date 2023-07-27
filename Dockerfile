FROM ruby:2.1
MAINTAINER Education Team at Docker <education@docker.com>

COPY Gemfile Gemfile.lock ./
RUN bundler install
COPY . /src
WORKDIR /src

CMD ["rackup", "--host", "0.0.0.0"]
EXPOSE 9292




#docker build . -t {name}
#docker build . -t {name}:{tag} 
#docker build . -t name:red
#docker build . -t name:blue etc

#docker run -d -P namer:red etc
