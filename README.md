# テーブル設計

## users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |
| nickname           | string  | null: false               |
| introduction       | text    | null: false               |
| name               | string  | null: false               |
| post_code          | string  | null: false               |
| prefecture_id      | integer | null: false               |
| address            | string  | null: false               |
| telephone          | string  | null: false               |

### Association

- has_many: posts
- has_many: comments

## posts テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| title         | string     | null: false                    |
| text          | text       | null: false                    |
| prefecture_id | integer    | null: false                    |
| store         | string     |                                |
| user          | references | null: false, foreign_key: true |

### Association

- has_many: comments
- belongs_to: user

## comments テーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| comment   | text       | null: false                    |
| user      | references | null: false, foreign_key: true |
| post      | references | null: false, foreign_key: true |

### Association

- belongs_to: user
- belongs_to: post
