# setup と draw

Processingでは、「setup」「draw」というあらかじめ決められた名前の関数を宣言することで、自動的に繰り返し実行することができます。


### setup
プログラム初期化。最初に読み込む

### draw
メインループ。一定期間ごとに呼び出され、繰り返し実行される


```
//初期設定
void setup() {
  // 最初の1回だけ読み込む
}

//メインループ
void draw() {
  // ここが繰り返される
}

```

&nbsp;
&nbsp;

#### サンプルコード

```
void setup() {
    size(500,500); // ウインドウのサイズ
    background(255); // 背景
}

void draw() {
    noStroke(); // 線なし
    fill(0,255,255,100); // 塗り
    ellipse(mouseX,mouseY,100,100); // 円をマウス座標を中心に描く
}
```

![](img/sketch_shape02.png)

&nbsp;
&nbsp;


<!--##変数を使ったアニメーション

### 四則計算
プログラムの中の計算式は通常の数式ほぼ同じ形で書くことができますが、かけ算「×」 のかわりに「 *(アスタリスク)」を、割り算「÷」のかわりに「 /(スラッシュ)」を使 うことに注意しましょう。



```
int num = ( 20 + ( 100 * 3 ))/ 2;
println(num);

```

| 記述法 | 意味 |
|-----------|------------|
| a++ | 変数 a の値に 1 を足して再度変数 a に代入 |
| a-- | 変数 a の値から 1 を引いて再度変数 a に代入 |
| a += 2; | 変数 a の値に 2 を足して再度変数 a に代入 |
| a -= 2; | 変数 a の値から 2 を引いて再度変数 a に代入 |

&nbsp;
&nbsp;


### x座標の移動（等速直線運動）

```
//グローバル変数
float x; //x座標
float speed; //スピード

//初期設定
void setup() {
  size(500, 500);
  smooth();
  x = 50; //xの初期位置
  speed = 2; //スピードの値
}

//メインループ
void draw(){
  background(0);
  ellipse(x,250,50,50);
  x = x + speed; // xの現在地にスピードの値を足していく
}
```

![image](https://yonekura907.github.io/dh17processing/math2.png)

&nbsp;
&nbsp;

### x座標とy座標の移動（等速直線運動）

```
// グローバル変数
int diameter; // 円の直径
float x; // ｘ座標
float y; // y座標
float speed; // スピード

//初期設定
void setup(){
  size(500,500);
  smooth();
  noStroke(); // 線なし
  fill(0,255,0); // 塗りグリーン
  diameter = 50;
  x = width/2; // width(ウインドウ幅)の半分　画面の左右中央
  y = height/2; // height(ウインドウ高)の半分　画面の上下中央
  speed = 2; // 初期スピード
}

//メインループ
void draw(){
  background(0);
  ellipse(x,x,diameter,diameter);

  x = x + speed; // xの現在地にスピードの値を足していく
  y = y + speed;  // yの現在地にスピードの値を足していく
}
```

![image](https://yonekura907.github.io/dh17processing/sketch_var01.png)-->