# dmdata_oauth_flutter

DMDATAのOAuth2認証をFlutterアプリケーションで簡単に実装するためのパッケージです。

## 機能

- OAuth2.0認可コードフロー
  - PKCE対応
  - カスタムスキーム対応

## セキュリティに関する注意

1. リダイレクトURIはアプリケーション固有のスキームを使用してください
1. PKCEを必ず有効にしてください
1. stateパラメータは自動的に生成・検証されます

## ライセンス

MIT License
