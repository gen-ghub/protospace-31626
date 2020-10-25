# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |
| profile  | text   | null: false |
|occupation| text   | null: false |
| position | text   | null: false |

### Association

- has_many :prototypes
- has_many :comments



## prototypes テーブル

| Column    | Type       | Options                         |
| --------  | ---------  | ------------------------------- |
| title     | string     |                                 |
|catch_copy | text       |                                 |
| concept   | text       |                                 |
| user      | references |                                 |


### Association

- belongs_to :users
- has_many :comments



## comments テーブル

| Column    | Type      | Options                         |
| --------  | --------- | ------------------------------- |
| text      | text      |                                 |
| user      | references|                                 |
| prototype | references|                                 |



### Association

- belongs_to :users
- belongs_to :prototypes
