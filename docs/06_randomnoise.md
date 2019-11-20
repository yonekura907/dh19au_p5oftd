# ランダムとノイズ



## ランダム

ランダムな数値データを作る式。random(128, 256)と指定すると、128以上で256未満の範囲から乱数を1つつくります。

```
// 50〜200の間でランダムな数値（float）を返す
random(50,200);

```


&nbsp;
&nbsp;

#### サンプルコード


```
void setup() {
    size(500,500);
    background(255);
}

void draw() {
    noStroke();
    fill(random(0,255),random(0,255),random(0,255),100); // 塗りがランダム
    ellipse(random(0,500),random(0,500),100,100); // 円の座標をランダムにして描く
}
```
![](img/sketch_shape03.png)

&nbsp;


```
// グローバル変数の宣言　コード全体で使える変数
int x;
int y;

void setup() {
  size(500, 500);
  background(0);
}

// メインループ
void draw() {
  // yは150から350の間でランダムの値を出力
  y = (int) random(150, 350);
  stroke(0, 255, 0);
  point(x, y); // 円に変数の値を代入
  x++; // xは1ずつ加算
}
```





&nbsp;


## ノイズ

自然物を表現するときのテクスチャや地形描写などで使われる
パーリンノイズの生成に使う。0.0 から1.0 の間の数値（float）を返す。

```
noise(x);

```


&nbsp;
&nbsp;

#### サンプルコード


```
float x;
float noiseNum;

void setup(){
  size(800,800);
  background(255);
  x = 0;
  noiseNum = 0;
}

void draw(){
  background(255);
  fill(0,255,255);
  noStroke();
  // y座標にノイズ乱数（100掛けたもの）を加える
  float y = noise(noiseNum)*100 + 400;
  noiseNum += 0.1;// ノイズ
  ellipse(x,y,100,100);
  x++; // 横移動
  println(y);
}
```
