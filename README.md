# アプリケーション名
Waps-38514

# アプリケーション概要
シフト希望・シフト管理を一つのアプリケーションで行い、いつでもどこでも最新のシフトを確認できる。

# URL
https://waps-38514.herokuapp.com/

# テスト用アカウント
・ Basic認証パスワード : 393939
・ Basic認証ID : maka3
・ 管理者用メールアドレス : kikutatomokazu4@gmail.com
・ 管理者用パスワード : ki44444444
・ 一般用メールアドレス : ue@gmail.com
・ 一般用パスワード : ue222222

# 利用方法

## シフト希望
1.トップページ(一覧ページ)のヘッダーからユーザー新規登録を行う
2.ヘッダーのシフト希望→シフト希望入力ボタンを押して、シフト希望内容(勤務状態、出勤時間、退勤時間、詳細)を入力して登録する

## シフト作成
1.(管理者用アカウントのみ)ヘッダーのシフト作成からシフト作成画面に遷移して、シフト希望を見ながらシフト作成をする(シフト希望が入力されていると、シフト作成画面にも同じ勤務内容が入力されている)
2.シフト希望が無い日時に、名前と勤務状態、出勤時間、退勤時間、詳細を入力することでシフト作成ができる(シフト作成の内容はシフト希望側には反映されない)

# アプリケーションを作成した背景
私自身が、シフトでの仕事をしていた際に紙ベースでのシフト希望やシフト作成、管理などでした。
紙ベースだとシフト希望を出す際に職場で書く時間や場所が限られること、またシフトの変更がある度に紙を印刷し直すこと、
シフト変更があった場合に職場に行かなければ分からないことなど多くの問題がありました。
それらをアプリケーションで全て完結してしまえば良いのでは無いかと考えて作成致しました。

# 洗い出した要件
[要件を定義したシート](https://docs.google.com/spreadsheets/d/18I60KlVwaw5Go3nxRlF59gyH3h_71O7uHNS7KceRVL0/edit#gid=982722306)

# 実装した機能についての画像やGIFおよびその説明
~~画像やGIF、説明を記載~~

# 実装予定の機能
現在、GoogleカレンダーのAPIを利用して、シフト内容をGoogleカレンダー側へエクスポートする機能を実装中。
今後はLINEのAPIを使用して、シフトが修正・変更があった際に通知で知らせる機能を実装予定。

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/8e13cb50382694bfcc852c309f69ca7e.png)](https://gyazo.com/8e13cb50382694bfcc852c309f69ca7e)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/0c56b03227378418d5c50e94ba7fed3d.png)](https://gyazo.com/0c56b03227378418d5c50e94ba7fed3d)

# 開発環境

# ローカルでの動作方法

# 工夫したポイント

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

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| work_status_id | integer    | null: false                    |
| content        | string     |                                |
| start_time     | datetime   |                                |
| end_time       | datetime   |                                |
| user_id        | references | null: false, foreign_key: true |

### Association

- has_one :confirm
- belongs_to :user

- extend ActiveHash::Associations::ActiveRecordExtensions
- belongs_to : work_status

## confirm テーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| work_status_id | string     | null: false                    |
| content        | string     |                                |
| start_time     | datetime   |                                |
| end_time       | datetime   |                                |
| user_id        | references | null: false  foreign_key: true |
| hope_id        | references | foreign_key: true              |

### Association

- belongs_to :hope
- belongs_to :user
- has_many :comments

- extend ActiveHash::Associations::ActiveRecordExtensions
- belongs_to : work_status


## comment テーブル
| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| content    | string     | null: false,                   |
| user_id    | references | null: false, foreign_key: true |
| confirm_id | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :confirm