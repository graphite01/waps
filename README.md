# アプリケーション名
Waps-38514  

# アプリケーション概要
シフト希望  
・シフト管理を一つのアプリケーションで行い、いつでもどこでも最新のシフトを確認できます。  

# URL
https://waps-38514.herokuapp.com/  

# テスト用アカウント
・ Basic認証ID : maka3  
・ Basic認証パスワード : 393939  
・ 管理者用メールアドレス : kikutatomokazu4@gmail.com  
・ 管理者用パスワード : ki44444444  
・ 一般用メールアドレス : ue@gmail.com  
・ 一般用パスワード : ue222222  

# 利用方法
・ユーザー登録する  
・シフト希望画面で、勤務の希望を入力する(一般・管理者共に可能)  
・シフト希望画面で、入力した内容を修正、削除する(一般・管理者共に可能)  
・シフト作成画面で、シフト希望を見て必要な情報を入力してシフトを作成する(管理者のみ可能)  
・シフト作成画面で、入力した内容を修正、削除する(管理者のみ可能)  
・シフト作成で作成されたシフトはトップページにて確認できる(ログインしていれば、一般・管理者共に可能)  
・トップページで、シフト内容に対してのコメントをする事が可能(主にシフトの内容を変えてほしい、シフト作成完了&修正報告などに使用、ログインしていれば一般・管理者共に可能)  

## シフト希望
1.トップページ(一覧ページ)のヘッダーからユーザー新規登録を行う事ができます。  
2.ヘッダーのシフト希望→シフト希望入力ボタンを押して、シフト希望内容(勤務状態、出勤時間、退勤時間、詳細)を入力して登録できます。  

## シフト作成
1.(管理者用アカウントのみ)ヘッダーのシフト作成からシフト作成画面に遷移して、シフト希望を見ながらシフト作成をする(シフト希望が入力されていると、シフト作成画面にも同じ勤務内容が入力されています。)  
2.シフト希望が無い日時に、名前と勤務状態、出勤時間、退勤時間、詳細を入力することでシフト作成ができます。(シフト作成の内容はシフト希望側には反映されないです。)  

# アプリケーションを作成した背景
私自身が、シフトでの仕事をしていた際に紙ベースでのシフト希望やシフト作成、管理などでした。  
紙ベースだとシフト希望を出す際に職場で書く時間や場所が限られること、またシフトの変更がある度に紙を印刷し直すこと、
シフト変更があった場合に職場に行かなければ分からないことなど多くの問題がありました。  
それらをアプリケーションで全て完結してしまえば良いのでは無いかと考えて作成致しました。  

# 工夫したポイント
工夫したのは、シフト作成者（管理者）のためのサポート機能です。  
作成者が使いやすいように従業員が提出したシフト希望を、シフト希望の内容をシフト作成画面に連動させた上で、シフト作成画面を修正した時にシフト希望側には修正したことが反映されないようにする部分です。  
カレンダー方式にする事でシフトを見やすくしております。  
その為simple_calendarのGemを使用致しました。  
このアプリを使用すれば管理者も従業員も、いつでもどこでも最新のシフトを確認できるので良いと思います。  
またシフト内容の変更についてや連絡事項について、トップページのコメント機能を使用することで連絡が出来ます。  

# 洗い出した要件
https://docs.google.com/spreadsheets/d/18I60KlVwaw5Go3nxRlF59gyH3h_71O7uHNS7KceRVL0/edit#gid=982722306

# 実装した機能についての画像やGIFおよびその説明
## シフト希望画面
・シフト希望入力画面  
[![Image from Gyazo](https://i.gyazo.com/b55802549843082c6afe030d105d4949.png)](https://gyazo.com/b55802549843082c6afe030d105d4949)  
・上記入力後  
[![Image from Gyazo](https://i.gyazo.com/1477a2d0703caca5369aa1bdc5fece08.png)](https://gyazo.com/1477a2d0703caca5369aa1bdc5fece08)  

## シフト作成画面
・シフト作成画面上部(シフト希望画面表示)  
[![Image from Gyazo](https://i.gyazo.com/1832eab9db9015ca60648553a56be495.png)](https://gyazo.com/1832eab9db9015ca60648553a56be495)  
・シフト作成画面下部(シフト作成入力画面表示)  
[![Image from Gyazo](https://i.gyazo.com/2f54d273a98f220b439210f3fc356835.png)](https://gyazo.com/2f54d273a98f220b439210f3fc356835)  
・上記入力後  
[![Image from Gyazo](https://i.gyazo.com/fc94647252c456095803bf9e0f8a5a30.png)](https://gyazo.com/fc94647252c456095803bf9e0f8a5a30)  

## コメント機能画面
・コメント一覧&入力画面(トップページ下部)  
[![Image from Gyazo](https://i.gyazo.com/b8be0c22fd09e67f5a2e2c0618dbf695.png)](https://gyazo.com/b8be0c22fd09e67f5a2e2c0618dbf695)  
・コメント入力後  
[![Image from Gyazo](https://i.gyazo.com/89cd678d73fa1a5f3df633c6d3fadf71.png)](https://gyazo.com/89cd678d73fa1a5f3df633c6d3fadf71)  

# 実装予定の機能
現在、GoogleカレンダーのAPIを利用して、シフト内容をGoogleカレンダー側へエクスポートする機能を実装中です。  
今後はLINEのAPIを使用して、シフトが修正・変更があった際に通知で知らせる機能を実装予定しています。  
カレンダーの月めくり、シフト希望とシフト作成時のajax化も実装予定です。  

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/cf8375f55dc890e9ab3732963315654a.png)](https://gyazo.com/cf8375f55dc890e9ab3732963315654a)  

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/e7a7df954e529b30343f1b90c1bf66a6.png)](https://gyazo.com/e7a7df954e529b30343f1b90c1bf66a6)  

# 開発環境
HTML  
CSS  
Ruby  
Ruby on Rails  
Java Script  
GitHub  
heroku  

# ローカルでの動作方法
以下のコマンドを順に実行  
% git clone http://github.com/graphite01/waps-38514/[クローン先のディレクトリ]  
% cd [クローン先のディレクトリ]  
% bundle install  
% yarn install  


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

- extend ActiveHash::Associations::ActiveRecordExtensions
- belongs_to : work_status


## comment テーブル
| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| content    | string     | null: false,                   |
| user_id    | references | null: false, foreign_key: true |

### Association
- belongs_to :user