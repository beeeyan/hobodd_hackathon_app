## ハッカソンのテーマ

「ほっと」（ほっと/ホット/hot）

## 私たちの開発方針とテーマ解釈

開発方針

- 「HOT」な技術を使って、大切な人たちと「ほっと」する体験を提供する。

「ほっと」な技術とは？

- Flutter（言わずもがな
- Hono（🔥
- Figma（開発に寄り添いやすいデザインツール

「ほっと」する体験を提供するとは？

- 人と人との繋がりを感じる「温かさ」を感じる。
- 家族・恋人の安全に対する「安心」を届ける。

## アプリ概要

Flutterを使用したモバイルアプリとCloud Flareを利用したバックエンドを連携させたした日めくりカレンダーアプリ。
家族・恋人など近しいグループの人たちとアプリの利用状況をアプリ内でシェアすることができる。

バックエンド：
[リポジトリ](https://github.com/beeeyan/hobodd_hackathon_api)は自前で実装

## 機能説明

日めくりカレンダー機能でカレンダーをめくることができる

- 日めくりカレンダーはめくらないとその日のままとなるため、毎日めくることが推奨される

カレンダーのシェア機能でグループの繋がりを感じることができる

- このアプリのユーザーはグループに所属することができる
- グループで記念日や誕生日を登録することができる
- 登録した記念日や誕生日は、日めくりカレンダーに表示される

日めくりをシェアする機能で、グループの安全を知らせることができる

- グループに所属すると、そのグループのメンバーが日めくりカレンダーをめくったかどうかがわかる
- グループのメンバーが日めくりカレンダーをめくると、その日の日めくりカレンダーがグループ内のユーザーにプッシュ通知が送信される
- グループのメンバーが日めくりカレンダーをめくらない日が続くと、そのユーザーが所属しているグループ内のユーザーにプッシュ通知が送信される

つまり、このアプリを利用しているユーザーは、メンバーがアプリを利用しているかどうかを知ることができ日々の安全を確認することができる💡

## figma

[2024 年 Flutter ハッカソン](https://www.figma.com/design/YlMS7NCY53NWCzAooFYMEi/2024Flutter%E3%83%8F%E3%83%83%E3%82%AB%E3%82%BD%E3%83%B3?node-id=0-1&node-type=canvas&t=DlR5vaWaBC72yiOu-0)

## 環境構築

fvm と VSCode の利用を想定している。  
VSCode 用の設定は追加済みである。

**Flutter SDK**

- バージョン管理ツール : [FVM](https://fvm.app/)
  - FVM のインストール・設定については、[こちらの記事](https://zenn.dev/riscait/articles/flutter-version-management)が参考になります。
  - FVM の 3 系を利用しています。[こちらの記事](https://zenn.dev/altiveinc/articles/flutter-version-management-3)を参考ください。
  - ※ 私は`Homebrew`でインストールしています。
- 使用しているバージョンは [.fvmrc](.fvmrc) に記載されています。
- FVM のインストール後、以下の流れで環境構築を実施。
  - プロジェクトのルートディレクトリで、`fvm flutter --version`を実行すると、ローカル環境に該当のバージョンがなければインストールされる。
  - VSCode の場合
    - VSCode を再起動する
    - main.dart などの dart ファイルを開き、エディタの右下の「Dart」部分をクリックして、該当のバージョンの Flutter が読み込まれていれば OK

### 環境分け

環境は以下を参考に`dev`（開発）と`prod`（本番）で分けています。  
[【Flutter 3.7 未満】Dart-define のみを使って開発環境と本番環境を分ける](https://zenn.dev/altiveinc/articles/separating-environments-in-flutter-old-edition)

iOS の build を実行するため、以下のスクリプトに実行権限を与えてください。

```console
$ chmod 755 ios/scripts/retrieve_dart_defines.sh
```

## 実行・ビルド方法

開発環境の実行コマンド

```console
$ fvm flutter run --debug --dart-define=FLAVOR=dev
```

本番環境の実行コマンド

```console
$ fvm flutter run --debug --dart-define=FLAVOR=prod
```

ビルドコマンド

```console
# Android
$ flutter build appbundle --release --dart-define=FLAVOR=prod
# iOS
$ flutter build ipa --dart-define=FLAVOR=prod
```

## アーキテクチャ

```
lib/
├── api/
├── config/
├── enum/
├── future/
│ ├── future_A/ # 関心A
│ └── future_B/ # 関心B
├── gen/
├── routing/
├── util/
└── main.dart
```

## 構成図

## 役割：課題等

[役割](https://scrapbox.io/flutter-hackathon-2024/%E5%BD%B9%E5%89%B2)

[課題](https://scrapbox.io/flutter-hackathon-2024/issue%E7%AE%A1%E7%90%86)

## DB

<img width="836" alt="image" src="https://github.com/user-attachments/assets/892114e6-69d2-4857-af96-5eeaaac7e1e8">

## 実装時の工夫

## 全体

プルリクレビューを挟んで、開発フローを大事に。  
(提出直前に緊急リリースをいくつかしてしまったので反省している)  
  
ワンチームでデザイン・フロントエンド・バックエンド全てに挑戦した。

## アプリ

- スワイプでカレンダーをめくれること
    - AppBarの装飾を調整して、「日めくりカレンダー」のめくる体験を演出しました
    - 課題として、スワイプできることがユーザーに伝わりにくいことがある
      - スワイプを検知するロジックを追加して、UIを改善することで解決していきたい

## バックエンド

- Hono × Cloudflareといった流行り（ほっと）な技術 × Flutterに挑戦したところ

## デザイン

- 情報設計を行う際にFigmaのUI Kitを活用してワイヤーを作成した
    - Flutterエンジニアが多い中では、MD3を活用することで多くの文脈を伝えることができた
		- 正確なデザインデータを作成しなくても、ワイヤーのままエンジニア間で成果物の状態や画面遷移のイメージをすり合わせることができた

## 苦労した点

##　全体

実装場所の取捨選択  
「全て」に取り組んだため、形になるまでに時間がかかった。

## アプリ

- 一部、不具合解消にいたらず、マージできなかった。  

## バックエンド

- push通知の送信で思わぬ制約があった。  
- DBが普段使い慣れているものではなく、癖があった。  

## 総評

スケジュール管理できていなかったところはあるが、　　
何を作るか  
デザイン  
Flutterのフロントエンド  
バックエンと  
  
全てを合わせて一つの形にすることができた
