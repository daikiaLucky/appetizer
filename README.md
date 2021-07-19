![APPETIZER](https://〜.gif)

<h2 align="center">APPETIZER</h2>

<p align="center">
  <a href="vue公式サイトURL"><img src="https://〜.png" width="80px;" /></a>
  <br>
  <a href="PWA公式サイトURL"><img src="https://〜.png" height="45px;" /></a>
  <a href="Firebase公式サイトURL"><img src="https://〜.png" height="45px;" /></a>
  <a href="firealpaca公式サイトURL"><img src="https://〜.png" height="40px;" /></a>
  <a href="sweetalert公式サイトURL"><img src="https://〜.png" height="45px;" /></a>
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