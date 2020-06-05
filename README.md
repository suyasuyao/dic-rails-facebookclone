# dic-rails-facebookclone

# docker
## 利用方法
```
# 初回のみ
 docker-compose build --no-cache
 docker-compose run web bin/rails db:create 
# マイグレーションやデータ投入を行う際に 
 docker-compose run web bin/rails db:migrate db:seed
# アプリケーション起動時毎回実施
 docker-compose up
```


# herokuデプロイ


デプロイ先
https://enigmatic-journey-58147.herokuapp.com/
```
# heroku初期化
heroku login
heroku create
git push heroku master

# herokuデプロイ
git subtree push --prefix image_post_hub/ heroku master
heroku run rails db:migrate

# herokuのログ
heroku logs -t

# herokuでrails c
heroku run rails console

# サーバー再起動
heroku restart

#データベースリセット
heroku pg:reset DATABASE
```