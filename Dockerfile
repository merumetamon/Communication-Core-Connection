FROM --platform=linux/x86_64 ruby:3.1 AS builder

ENV TZ=Asia/Tokyo

# メタデータの設定
LABEL maintainer="Your Name <your.email@example.com>"

# 必要なパッケージのインストール
RUN apt-get update -qq && apt-get install -y nodejs npm postgresql-client

RUN mkdir /communication-core-connection
WORKDIR /communication-core-connection

# GemfileとGemfile.lockをコピーしてbundle installを実行

RUN gem update --system
RUN bundle update --bundler

COPY Gemfile /communication-core-connection/Gemfile
COPY Gemfile.lock /communication-core-connection/Gemfile.lock


RUN bundle install
COPY . /communication-core-connection

# ポートの公開
EXPOSE 8000
RUN chmod +x ./entrypoint.sh
CMD ["./entrypoint.sh"]
