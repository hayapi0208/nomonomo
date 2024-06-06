# アプリケーション名
nomonomo
# アプリケーション概要
"知らない人"と飲みたい人を探すことができます。
# URL
https://nomonomo.onrender.com
# テスト用アカウント
Basic認証
- Basic認証ID：admin
- Basic認証パスワード：2222

投稿ユーザー
- メールアドレス：test1@test1.com
- パスワード：test1test1

検索ユーザー
- メールアドレス：test2@test2.com
- パスワード：test2test2
# 利用方法
## イベント投稿機能
1.トップページ（場所を探すページ）のヘッダーからユーザー新規登録を行う。<br>
2.投稿するボタンから、イベントの内容（タイトル、本文、都道府県、画像、店舗URL）を入力し投稿する。
## イベント検索機能
1.場所を探すページから投稿をクリックして、投稿の詳細を確認する。<br>
2.参加したい投稿があれば、その投稿にコメントを送り連絡を取る。<br>
3.参加の判断材料として、投稿者のマイページで自己紹介や過去の投稿を確認できる。
# アプリケーションを作成した背景
もっと気軽に"知らない人"とお酒を飲む機会を作りたいためです。<br>
一般的な飲食店で知らない人に話しかけることは、失礼に当たる可能性があるため控えています。<br>
しかし、中には同じように声をかけられない人もいて、お互いに貴重な機会を逃していると思います。<br>
そこで、事前に意思確認ができるアプリを開発することで、知らない人と飲める機会を増やすことができると考えました。
# 洗い出した要素
[要件を定義したシート](https://docs.google.com/spreadsheets/d/1R9LSZCs0m5OA_atIJcB6hEZA3qaFWrg5/edit#gid=977544212)
# 実装した機能についての画像やGIFおよびその説明
[投稿検索機能](https://gyazo.com/4c27ad796cf1dec4d00b259a2f66d3e7)<br>
[![Image from Gyazo](https://i.gyazo.com/4c27ad796cf1dec4d00b259a2f66d3e7.gif)](https://gyazo.com/4c27ad796cf1dec4d00b259a2f66d3e7)<br>
[投稿詳細機能](https://gyazo.com/9c8a6bca2bfb7414bd7ca1e75fdd269a)<br>
[![Image from Gyazo](https://i.gyazo.com/9c8a6bca2bfb7414bd7ca1e75fdd269a.gif)](https://gyazo.com/9c8a6bca2bfb7414bd7ca1e75fdd269a)<br>
[マイページ機能](https://gyazo.com/3431304dbd5424cbcdb22e6a36d4b6d7)<br>
[![Image from Gyazo](https://i.gyazo.com/3431304dbd5424cbcdb22e6a36d4b6d7.gif)](https://gyazo.com/3431304dbd5424cbcdb22e6a36d4b6d7)<br>
[コメント機能](https://gyazo.com/1f27590bbd0fd4ab9ea76339dd3655ff)<br>
[![Image from Gyazo](https://i.gyazo.com/1f27590bbd0fd4ab9ea76339dd3655ff.gif)](https://gyazo.com/1f27590bbd0fd4ab9ea76339dd3655ff)<br>
# 実装予定の機能
現在、GoogleMapsAPIを利用した位置情報共有機能を実装中。
- 位置情報を有効にしている近くのユーザーを地図上のピンで探せる機能。
- 地図上のユーザーへメッセージを送信する機能。<br>
[イメージ](https://gyazo.com/2ee12718dccdd07b3f1b499f8847b9fd)<br>
[![Image from Gyazo](https://i.gyazo.com/2ee12718dccdd07b3f1b499f8847b9fd.jpg)](https://gyazo.com/2ee12718dccdd07b3f1b499f8847b9fd)
# データベース設計
[![Image from Gyazo](https://i.gyazo.com/099859837a8d07a663048c4d1bd3b864.png)](https://gyazo.com/099859837a8d07a663048c4d1bd3b864)
# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/a93b4e051a8e78b6e90e55fd7c38bf7b.png)](https://gyazo.com/a93b4e051a8e78b6e90e55fd7c38bf7b)
# 開発環境
- フロントエンド <br>
HTML<br>
CSS<br>
jQuery
- バックエンド<br>
Ruby
# ローカルでの動作方法
以下のコマンドを順に実行<br>
% git clone https://github.com/hayapi0208/nomonomo.git<br>
% cd nomnomo

# 工夫したポイント
1つ目は投稿検索機能を実装したことです。投稿時に都道府県の入力を必須にしたことで、投稿件数が増えても自分の都道府県の投稿のみに絞って検索できるようにしました。各都道府県はActiveHashでのID管理にしたため、都道府県名で検索する方法に苦労しました。if文とfind_byメソッドを用いることで、その問題を解決することができました。

2つ目は画面背景をビールの画像にしたことです。スマートフォンでの使用を想定し、ヘッダー部分を泡に見立てたビールグラスになるようにレイアウトしました。文字が見え辛いくならないように、画像の上に半透明の背景を重ねて淡くしています。手に取ったユーザーが少しでも楽しい気持ちになってくれたらと思い、背景選びをしました。

また、追加実装中の位置情報共有機能が完成した際には、より手軽でスピーディに近くのユーザーが検索可能となります。