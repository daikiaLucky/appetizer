![APPETIZER](https://〜.gif)

<h2 align="center">APPETIZER</h2>

## 🌐 App URL

### **https://cupramen-timer.firebaseapp.com**  

## :Top Page

<p align="center">
  <img src="topimage6.jpg" width=70%>  
</p>　

## 📦 Features

<h3 align="center">- PWA -</h3>

<p align="center">
  <img src="topimage7.jpg" width=40%>
</p>

## usersテーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| nickname           | string  | null: false, unique: true |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |
| age_id             | integer | null: false               |
| gender_id          | integer | null: false               |
| favorite_liquor_id | integer | null: false               |

### Association
- has_many :posts
- has_many :comments
- has_many :likes

## postsテーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| title       | string     | null: false                    |
| description | text       | null: false                    |
| genre_id    | integer    | null: false                    |
| user        | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_many :comments
- has_many :likes

## commentsテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| text   | text       | null: false                    |
| user   | references | null: false, foreign_key: true |
| item   | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :item

## likesテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| post   | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :post