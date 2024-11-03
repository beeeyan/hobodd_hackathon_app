## ハッカソンのテーマ

「ほっと」（ほっと/ホット/hot）

## 私たちのテーマ解釈

家族・恋人の安全に対する「安心」。

## アプリ概要

家族・恋人など近しいグループの人たちとの日めくりカレンダーアプリ。
「HOT」な技術を使って、大切な人たちと「ほっと」する体験を。

バックエンド：
[リポジトリ](https://github.com/beeeyan/hobodd_hackathon_api)は自前で実装

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

## 実装時の工夫

# アプリ

-

# バックエンド

-

## 苦労した点

# アプリ

-

# バックエンド

-

## 総評
