# SpCalender
![image](https://github.com/yuki-nishimoto1109/sp_calender/assets/126940102/df8dcf00-924d-4ee0-a1ab-eed61e3bf326)

## 概要
　記念日を進捗管理し、コミュニケーションを円滑に進めるカレンダー！

## 開発環境
- Ruby 3.1.2
- Ruby on Rails 6.1.7.3
- SQLite3
- bootstrap 5.3.1
### Gem
- devise
- simple_calendar

## アピールポイント
- 通常の日々記録するものではなく、年周期の記念日カレンダー
- deviseによるアカウント管理
- bootstrapによるレシポンシブ対応

## ユーザーエクスペリエンス
- 年周期の記念日を記録し、記念日を忘れることを防ぐ
- 同時並行で近づく記念日を管理することで、出費の計画を行う

## 完成までの考え方やプロセス
カレンダーを使用することで得られるメリットは「予定を管理できること」であるが、<br>
記念日等の年周期のイベントを通常のカレンダーで管理するのは、少し設定の手間がかかる。<br>
また、私自身も記念日を覚えておくことが苦手で、その部分をシステム化出来ればと思った。<br>
そこで、月日とイベント名・内容だけの簡単な登録だけで俯瞰して管理できるようなカレンダーを作成。

## 使用方法
```
$ git clone git@github.com:yuki-nishimoto1109/sp_calender.git
$ cd sp_calender
$ rails db:migrate
$ rails db:seed
$ yarn install
$ bundle install
$ rails s
```
テストアカウントでログイン<br>
email: test@test.com<br>
pass: 000000
