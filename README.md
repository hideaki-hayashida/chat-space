# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|name|string|null: false index: true|
### Association
- has_many :posts 
- has_many :users through: :groups

## groupテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null false|

### Association
- has_many :posts 
- has_many :users through: :groups

## postテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|
|image|string|
|user_id|references|null: false, foreign_key: true|
|group_id|references|null: false, foreign_key: true|
### Association
- belong_to :user
- belong_to :group


* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
