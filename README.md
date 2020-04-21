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
|name|string|null: false|
|id|integer|null false|
### Association
- has_many :posts through: :group_id
- has_many :groups

## groupテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null false|
|name|string|null false|
|user_id|integer|null: false, foreign_key: true|
|post_id|integer|null: false, foreign_key: true|
### Association
- has_many :posts through: :user_id
- has_many :users

## postテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null false|
|post|text|null false|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belong_to :user
- belong_to :group


* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
