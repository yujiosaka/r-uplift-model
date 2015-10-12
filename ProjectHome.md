# R言語によるUplift Modelの実装 #

## 関数 ##
  * buildUpliftTree(y.train, treat.train, x.train)
    * 学習データから、費用対効果を最大化するような分類を行う木を構築する
  * classify(uplift.tree, x.new)
    * 構築されたUpliftTreeを元に、新しいデータを分類する

