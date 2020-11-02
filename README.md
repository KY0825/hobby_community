# アプリケーション名
HOBIC


# アプリケーション概要
趣味で繋がるチャットアプリ


# URL
未デプロイ


# テスト用アカウント
## Basic認証


## test用アカウント
A

B


# 利用方法
未記入


# 目指した課題解決
野球やサッカーなどのようにまだ比較的メジャーではない趣味を持った人達が集い、共通の趣味で繋がり、より楽しい余暇を過ごしてもらうため。


# 要件定義
●（スプレッドシートにまとめた要件定義を、マークダウンで記述しなおしましょう。）

# 実装した機能についてのGIFと説明
●（実装した機能について、それぞれどのような特徴があるのか列挙しましょう。GIFを添えることで、イメージがしやすくなります。）

# 実装予定の機能
●（洗い出した要件の中から、今後実装予定のものがあれば記述しましょう。）


# データベース設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| last_name          | string | null: false |
| first_name         | string | null: false |
| last_name_kana     | string | null: false |
| first_name_kana    | string | null: false |
| birthday           | date   | null: false |
| category           | 未定    |             |
| genre              | 未定    |             |

### Association

- has_many :groups
- has_many :messages


## groups テーブル

| Column             | Type       | Options     |
| ------------------ | ---------- | ----------- |
| name               | string     | null: false |
| text               | text       | null: false |
| category_id        | integer    | null: false |
| genre_id           | integer    | null: false |

### Association

- has_many :users
- has_many :messages


## users_groups テーブル

| Column | Type       | Options                        |
| -------| ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| group  | references | null: false, foreign_key: true |


## messages テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| text   | text       | null: false                    |
| user   | references | null: false, foreign_key: true |
| group  | references | null: false, foreign_key: true |

### Association

- has_many :users
- has_many :chats




# ローカルでの動作方法
●（git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記述しましょう。この時、アプリケーション開発に使用した環境を併記することを忘れないでください（パッケージやRubyのバージョンなど）。）