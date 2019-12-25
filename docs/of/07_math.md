# 計算

## 四則計算
プログラムの中の計算式は通常の数式ほぼ同じ形で書くことができますが、かけ算「×」 のかわりに「 *(アスタリスク)」を、割り算「÷」のかわりに「 /(スラッシュ)」を使 うことに注意しましょう。


 * `+` 足し算
 * `-` 引き算
 * `*` 掛け算
 * `/` 割り算
 * `%` 余りを求める



| 記述法 | 意味 |
|-----------|------------|
| a++ | 変数 a の値に 1 を足して再度変数 a に代入 |
| a-- | 変数 a の値から 1 を引いて再度変数 a に代入 |
| a += 2; | 変数 a の値に 2 を足して再度変数 a に代入 |
| a -= 2; | 変数 a の値から 2 を引いて再度変数 a に代入 |

&nbsp;


## 関数

### ランダム関数

ランダムな数値データを作る式。ofRandom(128, 256)と指定すると、128以上で256未満の範囲から乱数をつくります。

```
// 0〜200の間でランダムな数値（float）を返す
ofRandom(200);

```

&nbsp;

### map関数

`ofMap(value,0,400,0,255);`

0〜400の間で変化するvalueの値を、0から255の間に置き換えて変換する

&nbsp;



### 角度

弧度法からラジアン
`ofDegToRad(120)`

ラジアンから弧度法
`ofRadToDeg(PI/2)`

&nbsp;

### 三角関数

サイン/コサイン

`sin();`

`cos();`


&nbsp;



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

### ofNormalize()
正規化　ある範囲の間の値を0.0から1.0の間で置き換える

```
float a = norm(127.0,0.0,254.0);
//0から254のの間で127が0〜1の間であたるものは0.5
```

&nbsp;

### ofLerp()
線形補完

```
float a = ofLerp(30.0, 90.0, 0.5);
//30〜90の間で0~1の間にあたるもの。答えは60
```


&nbsp;

### ofDist()

2点つの座標間の距離を返す

#### mouseの位置に合わせて円の半径が拡大する


    
    void ofApp::draw() {
        float radius = ofDist(ofGetWidth()/2,ofGetHeight()/2,mouseX,mouseY);
        ofDrawCircle(ofGetWidth()/2, ofGetHeight()/2, radius*2);
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