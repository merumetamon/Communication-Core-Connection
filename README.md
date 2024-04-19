# README


# Communication-Core-Connection　とは

Ruby on Rails Ver.7.0.4 をDocker上で構築する際のサンプルです。

## 各バージョン
めっちゃ嘘です調べます
| 名前 | バージョン |
| ---- | ---- |
| Ruby  | 3.2.3-p157|
| Rails | Rails 7.0.4 |
| MySQL | 8.0.31 | 

## 最初にやること
参考:https://zenn.dev/kei1232/articles/0fac51829570c1

1. リポジトリのクローン   
`git clone git@github.com:merumetamon/communication-core-connection.git`
2.  Docker構築
`docker-compose build  `
3. DB作成   
`docker-compose run web rails db:create`
4. Docker起動   
`docker-compose up`
