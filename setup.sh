#!/bin/bash

# 最小構成のSphinxプロジェクトセットアップ

echo "最小構成のSphinxプロジェクトを作成します..."

# conf.py
cat > conf.py << 'EOF'
# Sphinx設定ファイル（最小構成）

project = 'AWS認定資格ガイド'
author = 'AWS学習者'
release = '1.0'

extensions = ['sphinx_rtd_theme']
html_theme = 'sphinx_rtd_theme'
language = 'ja'
EOF

# index.rst
cat > index.rst << 'EOF'
AWS認定資格ガイド
=================

AWS認定資格の基本情報と試験対策をまとめたガイドです。

認定資格の概要
--------------

AWS認定は3つのレベルに分かれています：

* **基礎 (Foundational)** - Cloud Practitioner
* **アソシエイト (Associate)** - Solutions Architect, Developer, SysOps
* **プロフェッショナル (Professional)** - Solutions Architect Pro, DevOps Pro

各資格の特徴
------------

.. list-table::
   :header-rows: 1

   * - レベル
     - 試験時間
     - 問題数
     - 推奨経験
   * - 基礎
     - 90分
     - 65問
     - 6ヶ月
   * - アソシエイト
     - 130分
     - 65問
     - 1年
   * - プロフェッショナル
     - 180分
     - 75問
     - 2年以上

試験対策
--------

効果的な学習方法：

1. **公式リソースの活用**
   
   * AWS Skill Builder
   * 公式ドキュメント
   * ホワイトペーパー

2. **ハンズオン練習**
   
   * AWS無料利用枠の活用
   * 実際のサービス操作
   * アーキテクチャ構築

3. **模擬試験**
   
   * 公式練習問題
   * 時間管理の練習
   * 弱点分野の特定

.. note::
   AWS認定資格は3年間有効です。継続的な学習で知識をアップデートしましょう。

.. tip::
   Associate レベルから始めることをお勧めします。基礎知識がある方は Cloud Practitioner をスキップしても問題ありません。
EOF

# Makefile
cat > Makefile << 'EOF'
# Sphinxビルド用Makefile（最小構成）

SPHINXBUILD   = sphinx-build
BUILDDIR      = _build

html:
	@$(SPHINXBUILD) -b html . $(BUILDDIR)/html

clean:
	rm -rf $(BUILDDIR)

.PHONY: html clean
EOF

# requirements.txt
cat > requirements.txt << 'EOF'
sphinx==7.2.6
sphinx-rtd-theme==2.0.0
EOF

# README.md
cat > README.md << 'EOF'
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
EOF

echo "✅ セットアップ完了！"
echo ""
echo "次のステップ："
echo "1. python -m venv venv"
echo "2. source venv/bin/activate"
echo "3. pip install -r requirements.txt"
echo "4. make html"
echo "5. open _build/html/index.html"