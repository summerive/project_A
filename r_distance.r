### 同じディレクトリ内に保存しているCSVファイル形式のデータセットを読み込む.
### 注意：ダウンロードしたファイルはmacOSではデフォルトで ~/Downloads 以下に保存される．
### 1列目のデータを行名としてデータを読み込む
setwd("/cloud/project/")
dataset <- read.csv("./animals.csv",row.names=1)

### datasetがどのようなものか確認
print(dataset)


### データ間の距離を定義する。(以下の3つから任意の距離を選択する)
data_dist_method <- "euclidean"     #ユークリッド距離
#data_dist_method <- "manhattan"     #マンハッタン距離
#data_dist_method <- "maximum"       #最大距離

### 全データ間の距離をdata_dist_methodの距離定義に基づいて計算する（距離行列を求める）
distance_matrix <- dist(dataset, method=data_dist_method)

### 距離行列の確認
print(as.matrix(distance_matrix))
