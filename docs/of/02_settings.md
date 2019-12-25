# 02 openFrameworks設定

## openFrameworksの流れ

##### ヘッダファイル ofApp.h

* グローバル変数の登録
* カスタム関数の登録
* アドオンの読み込み
* クラスの読み込み


##### ofApp.h

```
class ofApp : public ofBaseApp{
    
public:
    void setup();
    void update();
    void draw();
    
    // 自作の関数   
    void triangle(float x, float y, float width, float height);
    
    // グローバル変数
    int hue;
    float radius;
};

```

##### ofApp.cpp


```
#include "ofApp.h"

void ofApp::setup(){
	//最初の1回だけ呼ばれる
}

void ofApp::update(){
	//繰り返し呼ばれる。数値の更新に使う
}

void ofApp::draw(){
	//繰り返し呼ばれる。描画に使う  
}
```
* setup() 最初の1回だけ呼ばれる
* update() 繰り返し呼ばれる。数値の更新に使う
* draw() 繰り返し呼ばれる。描画に使う



&nbsp;

## 初期設定


##### 画面のサイズ

`ofSetWindowShape(600, 400);`

__main.cpp__ に記述されてある。

変更する場合はsetup()に記述する。

&nbsp;

### 画面幅と高さの取得

画面の幅

`ofGetWidth();`

画面の高さ

`ofGetHeight()`


&nbsp;

### 背景の重ね方

背景を塗り重ねない

`ofSetBackgroundAuto(false);`


&nbsp;

### アルファブレンド用の設定

アルファ設定あり　初期値

`ofEnableAlphaBlending();`

アルファ設定なし

`ofDisableAlphaBlending();`


&nbsp;


### スムース

スムースあり

`ofEnableSmoothing(); `

スムースなし

`ofDisableSmoothing();`


&nbsp;


###  フレーム/経過時間

秒

`ofGetElapsedTimef();`

ミリ秒

`ofGetElapsedTimeMillis()`

フレーム数

`ofGetFrameNum();`

フレームレート

`ofSetFrameRate(30);`




垂直同期

`ofSetVerticalSync(true);`

モニタとPC処理のFPSを同期させる


カメラのデバイスを指定する

&nbsp;

### プリント文（コンソール）

変数の出力

`cout << x << endl;`

文字列と連結して出力

`cout << "posx: " << posx << endl;`


&nbsp;

### マウスカーソルの非表示
`ofHideCursor();`