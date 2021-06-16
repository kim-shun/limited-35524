# README

# アプリケーション名

## Ogi-Limited(オーギリミテッド)

# アプリケーションの概要  
大喜利投稿と回答ができるアプリ。ユーザーのパーソナリティ情報を閲覧できるのが特徴。

# URL
https://limited-35524.herokuapp.com/

# テスト用アカウント

## Basic認証を適用している場合
- ユーザー名： admin
- パスワード： 2222  
※ 現在は制限を外しています

## テストユーザー
- メールアドレス： test@com
- パスワード： test10com

# 利用方法
- ユーザー登録  
　ヘッダーの新規登録ボタンをクリックした後ニックネームやパスワードを入力する。「次のページへ」をクリックした後はプルダウンで表示されている項目を全て選択しないと登録できない。
- 大喜利投稿機能  
　トップページに表示されている「投稿する」をクリックした後、文頭と末尾をプルダウンから選択肢、自由回答欄の中身をユーザーが考えて大喜利を投稿できるようになる。
- 大喜利回答機能  
　トップページに一覧表示されている大喜利の「回答を見る」をクリックした後、回答欄に自由に記述をして、「回答する」をクリックすると回答一覧に回答が表示される。
- チャット機能  
　ルームを作成した後、「チャットルームへ」をクリックして、さらにサイドバーに表示されているチャット名をクリックすることでチャットができるようになる。
- ユーザー検索機能  
　トップページの検索フォームからプルダウンで表示されるユーザー名を選択して「検索する」をクリックするとユーザーの詳細が見られるようになる。。


# 目指した課題解決
  　解決を目指していた課題は「他者を理解するコストを減らすこと」である。  
  　多くのアプリのプロフィール欄は、投稿内容の自由度が高いと感じる。また世に出回るアンケートは、データを収集する上で貴重な資料であるにもかかわらず、質問項目と選択肢が雑だと考えていた。  
  　そこで、プロフィール欄の質問項目だけでなく選択肢も選りすぐったアプリを開発してみたいと考えた。  
  　アジャイル型開発を採用し、ユーザーの反応を見ながら随時機能を更新している。

# 洗い出した要件

| 機能 | 目的 | 詳細 | ユースケース |
| :---- | :---- | :----| :---- |
| ウィザード形式のユーザー管理機能 | 大喜利投稿者や回答者のパーソナリティを設定できるようにして閲覧者の想像力に幅を利かせるため | ニックネーム、メールアドレス、パスワード、パーソナリティ情報を登録できる | トップページのヘッダーにある新規登録ボタンを押して登録する |
| アクティブハッシュ | 選択肢を用意することでユーザーの考えるコストを減らすため | パーソナリティ情報や大喜利投稿の際に選択肢が提示される | 好きな色や大喜利投稿の文頭などの選択肢がプルダウンで表示される |
| 大喜利投稿機能 | 機知を利かせる面白さを味わってもらうため | ログインしたユーザーは大喜利を投稿できる | 投稿するボタンを押して投稿できる |
| 大喜利回答機能 | 自分と他人のアイデアを俯瞰して発想の切り口を考えられるようにするため | ログインしているユーザーは投稿された大喜利に回答できる | 投稿の詳細ページで回答を入力すると回答一覧に表示される |
| ユーザー詳細ページ | 大喜利投稿者や回答者の人物像を把握できるようにすることでユーザーの想像力に幅を利かせるため | ログインしているユーザーのパーソナリティ情報を閲覧できる | ユーザー名をクリックすると詳細ページに飛べる |
| ユーザー検索機能 | 気になるユーザーを調べられるようにするため | 検索したユーザーの詳細を見ることができる | 検索欄ではログインしているユーザーがプルダウンで表示される |
| エラーメッセージの日本語化 | 日本人をターゲットにした仕様にしているため | 投稿や登録に問題があった場合はエラー文が日本語で表示される | 未入力状態では登録や投稿ができない |
| ルーム機能 | 複数のユーザーとチャットできるようにするため | チャットしたいユーザー名を選択してルームを作成できる | 「チャットルームへ」を押してルームを作成するとチャットできるルームができる |
| チャット機能 | 気になるユーザーに対する興味を満たせるようにするため | ログインしているユーザーとチャットができる | 作成したルームでメッセージを送信できる |



# 実装した機能
## ウィザード形式のユーザー管理機能
- ユーザー登録の1ページ目
[![Image from Gyazo](https://i.gyazo.com/ec1b8a1b00901d5cb98172d48a14a103.png)](https://gyazo.com/ec1b8a1b00901d5cb98172d48a14a103)
- ユーザー登録の2ページ目
[![Image from Gyazo](https://i.gyazo.com/eb83a131b653495905eb0473d2068fac.gif)](https://gyazo.com/eb83a131b653495905eb0473d2068fac)
## 大喜利投稿機能
[![Image from Gyazo](https://i.gyazo.com/e0741842a281794563de2c1747218486.gif)](https://gyazo.com/e0741842a281794563de2c1747218486)
## 大喜利回答機能
[![Image from Gyazo](https://i.gyazo.com/d2e17f2fa5100148459b05d015dd02b6.gif)](https://gyazo.com/d2e17f2fa5100148459b05d015dd02b6)
## ユーザー詳細ページ
[![Image from Gyazo](https://i.gyazo.com/e16587e83660e3df49ff93006f29ec90.gif)](https://gyazo.com/e16587e83660e3df49ff93006f29ec90)
## ユーザー検索機能
[![Image from Gyazo](https://i.gyazo.com/dc672bb5cc62c912dec24d0c76bf2623.gif)](https://gyazo.com/dc672bb5cc62c912dec24d0c76bf2623)
## ルーム機能
[![Image from Gyazo](https://i.gyazo.com/06f7aa3c05a186935e81deadc9361e4d.gif)](https://gyazo.com/06f7aa3c05a186935e81deadc9361e4d)
## チャット機能
[![Image from Gyazo](https://i.gyazo.com/cd0be4a60feaaa87329bb15a66c5b712.gif)](https://gyazo.com/cd0be4a60feaaa87329bb15a66c5b712)
## エラーメッセージの日本語化
[![Image from Gyazo](https://i.gyazo.com/521396df5d8b950052d75f86396bd83e.gif)](https://gyazo.com/521396df5d8b950052d75f86396bd83e)

# 工夫したポイント
- アクティブハッシュを用いて選択肢を考える際、具体性と多様性を意識した。また質問も選りすぐった。
- hoverを使ってボタンを変色させるようにした。
- Action Cableを用いて大喜利回答をしやすくした。
- ビューに不快感を感じさせないように配置と色合いを考慮した。
- 人物に対する興味を満たせるように検索機能を設けた。

# 実装予定の機能
- レスポンシブWebデザイン
- いいね機能
- フレンド機能
- パーソナリティ情報の編集機能
- 通知機能
- チャットの非同期通信化

# データベース設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_one  :questions
- has_many :room_users
- has_many :rooms, through: :room_users
- has_many :messages

## questions テーブル

| Column        | Type       | Options     |
| ------------- | ---------- | ----------- |
| philosophy_id | integer    | null: false |
| color_id      | integer    | null: false |
| my_type_id    | integer    | null: false |
| like_type_id  | integer    | null: false |
| prefecture_id | integer    | null: false |
| food_id       | integer    | null: false |
| hobby_id      | integer    | null: false |
| music_id      | integer    | null: false |
| angry_id      | integer    | null: false |
| improve_id    | integer    | null: false |
| text          | text       |             |
| user          | references |             |

## Association
- belongs_to :philosophy
- belongs_to :color
- belongs_to :my_type
- belongs_to :like_type
- belongs_to :prefecture
- belongs_to :food
- belongs_to :hobby
- belongs_to :music
- belongs_to :angry
- belongs_to :improve
- belongs_to :user, optional: true

## rooms テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |

### Association

- has_many :room_users
- has_many :users, through: :room_users
- has_many :messages


## room_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| room   | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user

## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user

## ogirisテーブル

| Column         | Type       | Options           |
| -------------- | ---------- | ----------------- |
| first_text_id  | integer    | null: false       |
| second_text_id | integer    | null: false       |
| text           | string     | null: false       |
| user           | references | foreign_key: true |

## Association
- belongs_to :first_text
- belongs_to :second_text
- belongs_to :user
- has_many :comments

## commentsテーブル

| Column        | Type       | Options           |
| ------------- | ---------- | ----------------- |
| text          | text       | null: false       |
| user          | references | foreign_key: true |
| ogiri         | references | foreign_key: true |

## Association
- belongs_to :ogiri
- belongs_to :user


# ローカルでの動作方法

- % git clone https://github.com/kim-shun/limited-35524.git  
- % cd morning-routine
- % bundle install
- % rails db:create
- % rails db:migrate
- % rails s
- → http://localhost:3000


 # 開発環境

- フロントエンド：HTML/CSS/JavaScript/Ajax
- バックエンド：Ruby on Rails(6.0.0)/Ruby(2.6.5)/JavaScript
- テスト：RSpec
- データベース：MySQL/Sequel Pro
- インフラ：Heroku
- タスク管理：GitHub/Trello