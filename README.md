# Sphinxハンズオン - AWS認定資格ガイド

最小構成のSphinxプロジェクトです。

## セットアップ

```bash
# 1. 仮想環境の作成
python -m venv venv
source venv/bin/activate  # Windows: venv\Scripts\activate

# 2. 依存関係のインストール
pip install -r requirements.txt

# 3. ビルド
make html

# 4. 確認
open _build/html/index.html
```

## ファイル構成

- `conf.py` - Sphinx設定（最小限）
- `index.rst` - メインコンテンツ（1ファイルに統合）
- `Makefile` - ビルドコマンド
- `requirements.txt` - 必要なパッケージ

これが最小限のSphinxプロジェクト構成です。