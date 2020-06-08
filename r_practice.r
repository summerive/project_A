# 1. 基本的な使い方
# 1.1 式の入力
### 計算式を入力すると結果を出力する。
1+2
sin(pi/2)
sqrt(2)

# 1.2 変数
### 変数に何かを代入するには <- を使う。
x <- 4 * 3
x

# 1.3 ベクトル
### c(○, △, □,...) とするとベクトルを作ることができる。
### 1刻みの場合など規則性があるものは簡単に作れる。また，要素を取り出したり代入するには [ ] を使う。
x <- c(1,2,3,4,5)
x

x <- 5:10
x

x <- c(2,4,6,8,10)            #ベクトルxの2番目を表示
x[2]

x[3] <- 12                    #ベクトルxの3番目に代入
x

# 1.4 行列
### 行列を作るには matrix() を用いる。
### これはベクトルから行列を作るやり方。
x <- 1:6
y <- matrix(x,2,3)            #ベクトルxをもとに行数2, 列数3の行列を作成
y

### 初期値を指定して行列を作成。ベクトルと同様に要素を取り出したり代入する時は [ ] を使う。
x <- matrix(0,2,3)            #全ての要素が0の行数2, 列数3の行列を作成
x

### 行ごと、列ごとに代入することもできる。
x[2,] <- c(5,6,7)             #行列xの2行目にベクトルを代入
x

x[,3] <- c(2,3)               #行列xの3行目にベクトルを代入
x

rownames(x) <- c("A","B")
colnames(x) <- c("name","height","weight")
x

max(1,2,3)
min(1,2,3)

# 2. 余力のあるひと
# 2.1 制御文
# 2.1.1 条件分岐
### 条件で場合分けしたい場合は if,else を使う。
### if(<条件式>)<式1>else<式2>
a <- rnorm(1)                 #ランダムに数を1つ生成してaに代入
a

if(a>=0){
  print("p")                  #aが0以上なら"p"と表示
}else{
  print("m")                  #aが負なら"m"と表示
}

# 2.1.2 繰り返し
### 同じ処理を繰り返す場合は for を使う。
### for(<変数>in<値の列>)<繰り返したい式>
x <- 5:15
wa <- 0
for(i in 1:length(x)){        #iを1,2,...(xの長さ)まで変化させる
  wa <- wa + x[i]             #waにxのi番目を足す
}
wa                            #waには5+6+...+15の結果が入る

# 2.2 プロット
### 作図するには plot() を使う。
x <- 1:10
y <- -(1:10)
plot(x,y)                     #xとyをプロットする


### 以下より演習の答えになります。
# 2.3 for文, 行列演習
# 演習1
mat <- matrix(0,4,5)
for(i in 1:5){
  mat[2,i] <- i
}
print(mat)

# 演習2
mat <- matrix(0,4,5)
for(i in 1:4){
  mat[i,2] <- i
}
print(mat)

# 演習3
mat <- matrix(0,4,5)
for(i in 1:4){
  for(j in 1:5){
    mat[i,j] <- i+j
  }
}
print(mat)