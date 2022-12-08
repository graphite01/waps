# アプリケーション名
Waps-38514  

# アプリケーション概要
シフト希望  
・シフト希望を元に作成ができる為、シフト作成者の負担軽減。  
・このアプリを使用すれば管理者も従業員も、いつでもどこでも最新のシフトを確認できます。  

# URL
https://waps-38514.onrender.com  

# テスト用アカウント
・ Basic認証ID : maka3  
・ Basic認証パスワード : 393939  
・ 管理者用メールアドレス : kikutatomokazu4@gmail.com  
・ 管理者用パスワード : ki44444444  
・ 一般用メールアドレス : ue@gmail.com  
・ 一般用パスワード : u222222  

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
・シフト作成者（管理者）のためのサポート機能  
シフト作成者が使いやすいように以下の機能をつけました。  
①従業員が提出したシフト希望をシフト作成画面に連動  
作成者が使いやすいように従業員が提出したシフト希望をシフト作成画面に連動させた事で、最初から作成する必要がなくなり負担の軽減に繋げております。  
②シフト作成側の画面でシフト内容を変更しても、シフト希望側には内容の変更がされない  
上記機能を実装した理由として、シフト作成者が謝ってシフト希望の内容を変更した際に元の情報を確認して修正する事を安易にする為に実装致しました。
③シフト作成画面の上部にシフト希望の内容を表示  
シフト希望画面を上部・シフト作成画面を下部としていることで作成者がシフト希望の内容を確認し易い様にしております。  
  
・カレンダー方式  
カレンダー方式にする事でその月のシフトがひと目で分かるようにしております。  
この機能は、simple_calendarのGemを使用いたしました。  
  
・トップページのコメント機能  
シフト内容の変更や連絡事項について、トップページのコメント機能を使用することで従業員全員へ連絡が出来ます。  
  

# 洗い出した要件
https://docs.google.com/spreadsheets/d/18I60KlVwaw5Go3nxRlF59gyH3h_71O7uHNS7KceRVL0/edit#gid=982722306

# 実装した機能についての画像やGIFおよびその説明
## シフト希望画面
・シフト希望入力画面  
[![Image from Gyazo](https://i.gyazo.com/20141eadee511198041c303ae91687a4.png)](https://gyazo.com/20141eadee511198041c303ae91687a4)  
・上記入力後  
[![Image from Gyazo](https://i.gyazo.com/e58d3f6b8c24013844ecde24b2a98dbc.png)](https://gyazo.com/e58d3f6b8c24013844ecde24b2a98dbc)  
・シフト希望入力動画(ajax化した為、動画差し替え)  
[![Image from Gyazo](https://i.gyazo.com/c5829f4a761c01fe48350b66757b4d61.gif)](https://gyazo.com/c5829f4a761c01fe48350b66757b4d61)  
  
## シフト作成画面
・シフト作成画面(シフト希望画面とシフト作成画面をスクロール機能追加&シフト作成機能ajax化した為、画像を差し替え)  
[![Image from Gyazo](https://i.gyazo.com/6ac7618b99169434b349462dc1c00479.png)](https://gyazo.com/6ac7618b99169434b349462dc1c00479)  
  
・上記入力後画面(シフト希望画面とシフト作成画面をスクロール機能追加&シフト作成機能ajax化した為、画像を差し替え)  
[![Image from Gyazo](https://i.gyazo.com/5a14ecb6f026249e082077dec393f3da.png)](https://gyazo.com/5a14ecb6f026249e082077dec393f3da)  
  
・シフト作成動画(シフト希望画面とシフト作成画面をスクロール機能追加&シフト作成機能ajax化した為、画像を差し替え)  
[![Image from Gyazo](https://i.gyazo.com/b06461317153aa893a16cd8538f79364.gif)](https://gyazo.com/b06461317153aa893a16cd8538f79364)  
  
## コメント機能画面
・コメント一覧&入力画面(トップページ下部)  
[![Image from Gyazo](https://i.gyazo.com/4781321057ff459a714f0c6d4f6cc967.png)](https://gyazo.com/4781321057ff459a714f0c6d4f6cc967)  
・コメント入力&一覧動画  
[![Image from Gyazo](https://i.gyazo.com/0461cd722ddebf0c9b5b56c8974c50f7.gif)](https://gyazo.com/0461cd722ddebf0c9b5b56c8974c50f7)  
  
## Googleアカウントを使用して登録&ログイン
・ログイン動画  
[![Image from Gyazo](https://i.gyazo.com/9c3f4562b6b2d7b3ecc0b9129c37f058.gif)](https://gyazo.com/9c3f4562b6b2d7b3ecc0b9129c37f058)
  
## カレンダー月めくりのajax化
・月めくり動画  
[![Image from Gyazo](https://i.gyazo.com/02830a9cd3541547483d60ae30d222d4.gif)](https://gyazo.com/02830a9cd3541547483d60ae30d222d4)  
  
# 実装予定の機能
今後は、GoogleカレンダーのAPIを利用して、シフト内容をGoogleカレンダー側へエクスポートする機能を実装予定です。  
またLINEのAPIを使用して、シフトが修正・変更があった際に通知で知らせる機能を実装予定しています。  

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/c8e40163e1b8924d55123fe35f3d0d0b.png)](https://gyazo.com/c8e40163e1b8924d55123fe35f3d0d0b)  

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