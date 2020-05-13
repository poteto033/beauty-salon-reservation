# README

# 名前
beauty-salon-reservation

# Ruby version
ruby 2.5.1

# 概要
仮想の美容院予約サイト
美容院を予約する際に、カットやパーマなど予め細かいメニューを選択形式で選び予約することで
より便利な予約サイトになると考え作成（本アプリケーションでは現在未実装）。

# 機能
- ユーザーログイン機能
- 仮想の美容院への予約機能
- 予約内容の確認

# 実装予定
- html.scssを利用し、各ページのviewを作成
- 予約の際の選択肢を増やし、詳細な内容で予約出来るようにする
- 予約内容を編集やキャンセルする機能

# イントール
$ gem i -v 5.1.0 rails
$ git clone https://github.com/poteto033/beauty-salon-reservation
$ rails db:create
$ rails db:migrate
$ rails db:seed
$ bundle install
$ rails s

# 使い方
1. トップページの上部にあるログインボタンよりログインが出来ます。
2. ログインする→トップページにある各美容室を選択→予約するボタンを押す→各項目を選択後予約するボタンを押すことで、予約が出来る。
3. 予約後マイページで予約内容を確認できる。

# Database creation
##  userテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|nickname|string|null: false|
|encrypted_password|string|null: false|
|first_name|string|null: false|
|last_name|string|null: false|
|first_name_kana|string|null: false|
|last_name_kana|string|null: false|
|gender|string|null: false|
|birthday|date|null: false|
### Association
- has_one :resevarion

## salonsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|postcode|string|null: false|
|prefecture|string|null: false|
|city|string|null: false|
|block|string|null: false|
|building|string||
|phone_numbe|string|null: false|
### Association
- has_many :reservations

## resarvationsテーブル
|Column|Type|Options|
|------|----|-------|
|gender|string|null: false|
|cut|string|null: false|
|pama|string|null: false|
|color|string|null: false|
|price|string||
|user|references|null: false,foreign_key: true|
|salon|references|null: false,foreign_key: true|
### Association
- belongs_to :salon,optional: true
- belongs_to :user
