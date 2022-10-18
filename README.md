# README
# テーブル設計

## users テーブル

| Column             | Type       | Options                        |
| -------------------| ---------- | -------------------------------|
| email              | string     | null: false, unique: true      |
| encrypted_password | string     | null: false                    |
| name               | string     | null: false                    |
| account_type_id    | integer    | null: false                    |
| position           | string     |                                |

### emailとencrypted_passwordに関しては、deviseで作成済みになる

### Association

- has_many :hopes
- has_many :confirms
- has_many :comments

- extend ActiveHash::Associations::ActiveRecordExtensions
- belongs_to : account_type

## hope テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| title      | string     | null: false                    |
| content    | string     |                                |
| start_time | datetime   |                                |
| end_time   | datetime   |                                |
| user_id    | references | null: false, foreign_key: true |

### Association

- has_one :confirm
- belongs_to :user


## confirm テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| title      | string     | null: false                    |
| content    | string     |                                |
| start_time | datetime   |                                |
| end_time   | datetime   |                                |
| user_id    | references | null: false  foreign_key: true |
| hope_id    | references | null: false, foreign_key: true |

### Association

- belongs_to :hope
- belongs_to :user
- has_many :comment


## comment テーブル
| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| content    | string     | null: false,                   |
| user_id    | references | null: false, foreign_key: true |
| confirm_id | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :confirm