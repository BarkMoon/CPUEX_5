# cpuex
## ルール
- branchは係ごとに切りましょう
- やることが明確になった・ほかの人にやってほしいことがあるときにはissueに書きましょう
- ある程度できたらdevelopブランチにプルリクを出して、コードレビューをもらいましょう
## 9/29(1st)
- ISAはRISC-V
- レジスタ数は32にしましょうか
- スケジュール決定
  - 9/26 結成
  - 10/6 ??
  - 10/13 ??
  - 10/20 fibコンパイラ・シミュレータ・アセンブラ
  - 10/27 fibコア
  - (11/3) 単位コアISA
  - 11/10 ??
  - 11/17 単位コンパイラ・シミュレータ・アセンブラ
  - 11/24 単位コア
  - 12/1~ 未知
- fib命令列（10/06 追記）
  - 即値代入 li
  - 条件分岐 blez, jump
  - 足し算 add
  - 代入 mv
  - 返り ret
  - ロードストア lw, sw
  - ラベル
## 10/06(2nd)
- おべんつよ
- 定期mtgを金曜日授業後にやりませんか

## 資料置き場
レジスタ名:https://github.com/riscv/riscv-asm-manual/blob/master/riscv-asm.md#general-registers

## シミュレータ係より
jalrにラベルをどうしても使いたい場合は教えてください……(auipcとの兼ね合いで存在できないようにしています)
