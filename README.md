# Communication-Core-Connection　とは

Ruby on Rails Ver.7.0.4 をDocker上で構築する際のサンプルです。

## 各バージョン
| 名前 | バージョン |
| ---- | ---- |
| Ruby  | 3.1.3p185 |
| Rails | Rails 7.0.4 |
| MySQL | 8.0.31 | 

## 最初にやること

1. リポジトリのクローン   
`git clone `
2. DB作成   
`docker-compose run web rails db:create`
3. Docker起動   
`docker-compose up`
