# marumarukun's template

<center>

<!-- ![image.png](docs/logo.png) -->

</center>

<div align="center">
    <img alt="python versions" src="https://img.shields.io/badge/python-3.11-blue?color=5271FF">
    <a href="https://opensource.org/licenses/MIT">
        <img alt="MIT License" src="https://img.shields.io/badge/license-MIT-green?color=5271FF">
    </a>
    <a href="https://github.com/astral-sh/rye">
        <img alt="rye" src="https://img.shields.io/badge/package%20manager-rye-blue?color=5271FF">
    </a>
    <a href="https://github.com/PyCQA/flake8">
        <img alt="ruff" src="https://img.shields.io/badge/code%20style-ruff-000000.svg?color=5271FF">
    </a>
    <a href="https://github.com/python/mypy">
        <img alt="mypy" src="https://img.shields.io/badge/typing-mypy-blue?color=5271FF">
    </a>
</div>
<br />


## Description

機械学習プロジェクトを進める際に使用するテンプレートリポジトリ
以下の機能を含んでいます：

- Dockerを使用した環境の分離と管理
- Ryeを使用したPythonパッケージの管理
- Ruffを使用したコードスタイルのチェック
- Mypyを使用した型チェック
- pytestを使用したテストフレームワーク

## Used libraries

- python3.11
- VSCode(Cursor)
- Docker
- Rye + uv
- Ruff
- Mypy
- pytest
## How to use

### dockerコンテナ ビルド & 起動

CPU環境用

```bash
docker compose up -d --build cpu
```

GPU環境用

```bash
docker compose up -d --build gpu
```

### コンテナにアタッチ

次にVScode左下の`><`ボタンより`コンテナで再度開く`でコンテナにアクセス

### 拡張機能インストール

無事コンテナが開いたら, 「拡張機能の推奨事項があります」という通知が出ると思います.
この通知を許可すると, `.vscode/extensions.json`に記載されている拡張機能が自動的にインストールされます.
もし通知が出なかった場合は, 左のメニューから`拡張機能`を選択し, `フィルターアイコン`->`推奨`‐>`インストールアイコン`を押せば一括インストールできます.


### コードの整形 & リント & 型チェック & テスト実行
```bash
# formatter実行
rye run fmt
# linter/型チェック実行
rye run lint
# テスト実行
rye run test
