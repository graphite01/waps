# README
# テーブル設計

## companys テーブル

| Column             | Type       | Options                        |
| -------------------| ---------- | -------------------------------|
| name               | string     | null: false, unique: true      |
| encrypted_password | string     | null: false                    |

### Association

- has_many :users


## users テーブル

| Column             | Type       | Options                        |
| -------------------| ---------- | -------------------------------|
| email              | string     | null: false, unique: true      |
| encrypted_password | string     | null: false                    |
| name               | string     | null: false                    |
| account_type       | string     | null: false                    |
| position           | string     | null: false                    |
| company_id         | references | null: false, foreign_key: true |

### emailとencrypted_passwordに関しては、deviseで作成済みになる

### Association

- belongs_to :company
- has_many :requests
- has_many :confirms
- has_many :comments


## requests テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| title      | string     | null: false                    |
| content    | string     | null: false                    |
| start_time | datetime   | null: false                    |
| close_time | datetime   | null: false                    |
| user_id    | references | null: false, foreign_key: true |

### Association

- has_one :confirm
- belongs_to :user


## confirm テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| title      | string     | null: false                    |
| content    | string     | null: false                    |
| start_time | datetime   | null: false                    |
| close_time | datetime   | null: false                    |
| user_id    | references | null: false  foreign_key: true |
| request_id | references | null: false, foreign_key: true |

### Association

- belongs_to :request
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