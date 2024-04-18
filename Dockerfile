FROM ruby:3.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs



RUN mkdir /communication-core-connection
WORKDIR /communication-core-connection

COPY Gemfile /communication-core-connection/Gemfile
COPY Gemfile.lock /communication-core-connection/Gemfile.lock

RUN bundle install
COPY . /communication-core-connection