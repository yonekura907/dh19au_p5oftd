# 計算

## 四則計算
プログラムの中の計算式は通常の数式ほぼ同じ形で書くことができますが、かけ算「×」 のかわりに「 *(アスタリスク)」を、割り算「÷」のかわりに「 /(スラッシュ)」を使 うことに注意しましょう。


 * `+` 足し算
 * `-` 引き算
 * `*` 掛け算
 * `/` 割り算
 * `%` 余りを求める

```
int num = ( 20 + ( 100 * 3 ));
println(num);　// 合計320

int result = num % 7;
println(result) // 余りは5

```

&nbsp;


| 記述法 | 意味 |
|-----------|------------|
| a++ | 変数 a の値に 1 を足して再度変数 a に代入 |
| a-- | 変数 a の値から 1 を引いて再度変数 a に代入 |
| a += 2; | 変数 a の値に 2 を足して再度変数 a に代入 |
| a -= 2; | 変数 a の値から 2 を引いて再度変数 a に代入 |

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

![image](https://yonekura907.github.io/dh17processing/sketch_var01.png)


## map関数

**map(value,0,400,0,255);**

0〜400の間で変化するvalueの値を、0から255の間に置き換えて変換する

&nbsp;

**例**

```
void setup() {
    size(500,500);
}
void draw() {
    background(204);
    float x = map(mouseX,0,width,0,200);
    ellipse(x, 25, 40, 40);
}
```
0〜widthの間でmouseのx座標を取得するが、0〜200までの間で置き換えている。
結果円は200以上にならない


&nbsp;
&nbsp;


### map関数を使ったインタラクション

マウスY座標の上下の位置で円のスピードが変化する

```
// グローバル変数
float x; // 円のX座標
int hue; // 色相
float speed; // 円が進むスピード


void setup(){
  size(500,500);
  background(0);
  
  
  // 初期値を保存
  x = 0;
  hue = 0;
  speed = 1.0;
}



void draw(){
  
  // 円を奇跡を表示するために半透明の四角形を敷く
  noStroke();
  fill(0,30);
  rect(0,0,width,height);
  
  // カラーモードをHSB（色相・彩度・明度）に変更
  colorMode(HSB,360,100,100);
  
  // 円の塗り
  fill(hue,100,100);
  
  // 円の指定
  ellipse(x,height/2,40,40);
 
  // マウスY座標（0〜500の値）をスピード0〜10の値に置き換えスピードに代入
  speed = map(mouseY,0,500,0,10);

  // posXの現在の値にスピードを加えた値を代入
  x = x + speed;
  
  // if文　条件分岐　xが520を超えたら
  if(x>520){
    x = -20; //posXの座標を−20に戻す
  }
  
  // 色相の値に1を足す
  hue = hue + 1;
  
  // もし色相の値が360を超えたら
  if(hue>360){
    // 色相の値を0に戻す
    hue = 0;
  }
  
  // プリント文でマウスのY座標をコンソールに出力
  println(mouseY);
}
```

![image](https://yonekura907.github.io/dh17processing/sketch_math01.png)


&nbsp;
&nbsp;
&nbsp;



## 三角関数


### Sin波のアニメーション

```

int radius = 100; //波の半径 
int degree = 0; // 角度
float rad = 0; // 角度をラジアンに置き換えた値
float x = 0; // X座標

void setup() {
    size(500, 500);
    background(0);
}


void draw() {
  	
	translate(0, height/2); // 座標変換で描画の中心を高さの中央に移動
	
	rad = radians(degree); // 角度をラジアンに変換
	float y = radius * sin(rad); // 点のY座標を三角関数で計算
	
	stroke(0,255,0); // 点の色
	strokeWeight(4); // 点の太さ
	
	point(x,y); // 点の描画
	
	degree ++; // 角度を1ずつ増やしていく
	x++; // X座標を1ずつ増やしていく
}
```

![image](https://yonekura907.github.io/dh17processing/sketch_math02.png)

&nbsp;
&nbsp;


### Sin / Cos を使って円の描画

X座標をコサイン、Y座標をサインで計算すると円を描く

```
// グローバル変数
int hue; // 色相
int speed; // 円が進むスピード
int theta; // 円の角度
int radius; //円の半径


void setup(){
  size(500,500);
  noStroke();
  
  // 変数に初期値を保存
  hue = 0;
  speed = 1;
  radius = 200;
  theta = 0;
}



void draw(){
  //background(0);
  
  // 円を軌跡を表示するために半透明の四角形を敷く
  fill(0,10);
  rect(0,0,width,height);
  
  
  // 座標変換で円の基点を画面の中央に
  translate(width/2,height/2);
  
  // カラーモードをHSB（色相・彩度・明度・アルファ）に変更
  colorMode(HSB,360,100,100,100);
  
  // 円の塗り
  fill(hue,100,100,80);
  
  // 三角関数でX座標Y座標を指定
  float x = radius * cos(radians(theta));
  float y = radius * sin(radians(theta));
  
  // 円の指定
  ellipse(x,y,20,20);
 
  // 角度にスピードを代入
  theta = theta + speed;
  
  //もし角度が360を超えたら角度を0に戻す
  if(theta>360){
    theta = 0;
  }
}

```

![image](https://yonekura907.github.io/dh17processing/sketch_math03.png)



&nbsp;
&nbsp;


### サンプルコード

マウスのY座標の上下でスピードがマウスのX座標の左右で円の半径が代わる

```
// グローバル変数
int hue; // 色相
float speed; // 円が進むスピード
float theta; // 円の角度
float radius; //円の半径


void setup(){
  size(500,500);
  noStroke();
  
  // 変数に初期値を保存
  hue = 0;
  speed = 1;
  radius = 200;
  theta = 0;
}



void draw(){
  //background(0);
  
  // 円を軌跡を表示するために半透明の四角形を敷く
  fill(0,10);
  rect(0,0,width,height);
  
  
  // 座標変換で円の基点を画面の中央に
  translate(width/2,height/2);
  
  // カラーモードをHSB（色相・彩度・明度・アルファ）に変更
  colorMode(HSB,360,100,100,100);
  
  // 円の塗り
  fill(hue,100,100,80);
  
  // 三角関数でX座標Y座標を指定
  float x = radius * cos(radians(theta));
  float y = radius * sin(radians(theta));
  
  // 円の指定
  ellipse(x,y,20,20);
  
  // マウスY座標（0〜500の値）をスピード1〜8の値に置き換えスピードに代入
  speed = map(mouseY,0,500,1,8);
  
  // マウスX座標（0〜500の値）を円の半径40〜200に置き換えて代入
  radius = map(mouseX,0,500,40,200);
 
  // 角度にスピードを代入
  theta = theta + speed;
  
  //もし角度が360を超えたら角度を0に戻す
  if(theta>360){
    theta = 0;
  }
  
  // 色相の値に1を足す
  hue = hue + 1;
  
  // もし色相の値が360を超えたら
  if(hue>360){
    // 色相の値を0に戻す
    hue = 0;
  }
}
```

![image](https://yonekura907.github.io/dh17processing/sketch_math04.png)


&nbsp;
&nbsp;
&nbsp;
&nbsp;

&nbsp;
&nbsp;

## 数学的関数


### sq() 
二乗

    float c = sq(9); // 9*9 で 81.0


&nbsp;

### sqrt()
平方根

    float a = sqrt(81); // ルート81 で 9

&nbsp;

### pow()
指数

    float b = pow(3,4); // 3*3*3*3 で 81

&nbsp;

### norm()
正規化　ある範囲の間の値を0.0から1.0の間で置き換える

```
float a = norm(127.0,0.0,254.0);
//0から254のの間で127が0〜1の間であたるものは0.5
```

&nbsp;

### lerp()
線形補完

```
float a = lerp(30.0, 90.0, 0.5);
//30〜90の間で0~1の間にあたるもの。答えは60
```
&nbsp;

### ceil()
切り上げ

### floor()
切り捨て

### round()
四捨五入

### min()  max()
パラメーターの中から最小値、最大値を取得する

### abs()
絶対値


&nbsp;

### dist()

2点つの座標間の距離を返す

#### mouseの位置に合わせて円の半径が拡大する

    void setup() {
        size(500,500);
    }
    
    void draw() {
        background(0);
        float radius = dist(width/2,height/2,mouseX,mouseY);
        ellipse(width/2,height/2, radius*2, radius*2);
    }

![image](https://yonekura907.github.io/dh17processing/dist.png)

<!--

#### ドットをならべる

    float maxDistance;
    void setup() {
        size(500,500);
        noStroke();
        fill(0);
        maxDistance = dist(0,0,width,height);
    }
    
    void draw() {
        background(204);
        for (int i = 0; i < width; i+=20) {
            for (int j = 0; j < height; j+=20) {
                float mouseDist = dist(mouseX, mouseY, i, j);
                float diameter = (mouseDist / maxDistance) * 66.0;
                ellipse(i, j, diameter, diameter);
            }
        }
    }
    
    
![image](https://yonekura907.github.io/dh17processing/dist2.png)

-->