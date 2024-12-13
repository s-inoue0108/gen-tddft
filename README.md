# `gen-tddft.pl`

Gaussian の構造最適化計算のアウトプットから、TD-DFT 計算のインプットを出力します。`opt=modredundant` オプションによるスキャン計算の結果にも対応しています。

## 動作環境

Perl を使用します。

- 最近の Mac にはプリインストールされています。
- 最近の Linux にもプリインストールされています。
- Windows であれば [Strawberry Perl](https://strawberryperl.com/) などをインストールしてください。

## 使用法

```bash
$ perl ./gen-tddft.pl ./opt_result.out
```

## 計算条件

以下はハードコーディングされています。

- 汎関数：`b3lyp`
- 基底関数系：`6-31g(d)`
- `nstat`：`10`

