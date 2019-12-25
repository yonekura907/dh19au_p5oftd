# 04 図形

## 線


##### 線幅
`ofSetLineWidth(4);`

#### 線
`ofDrawLine(50,50,100,100);`

&nbsp;

## 形状

##### 四角形
`ofDrawRectangle(100, 100, 100, 50);`

* 四角形を中心起点
`ofSetRectMode(OF_RECTMODE_CENTER);`
* 四角形を左上起点
`ofSetRectMode(OF_RECTMODE_CORNER);`

&nbsp;

##### 正円
`ofDrawCircle(100, 100, 250);`

#### 楕円
`ofDrawEllipse(100, 100, 50, 100);`


 * 円の角の数
`ofSetCircleResolution(64);`

円を滑らかにする


&nbsp;

#### 三角形

` ofDrawTriangle(100, 100, 150, 150, 50, 150);` 

頂点座標XYの順


&nbsp;

## パスで図形を描画

```
ofBeginShape(); //パス開始
// ここに追加する
ofVertex(50, 120); 
ofVertex(100, 90); 
ofVertex(110, 60); 
ofVertex(80, 20); 
ofVertex(210, 60); 
ofVertex(160, 80); 
ofVertex(200, 90); 
ofVertex(140, 100); 
ofVertex(130, 120); 
ofEndShape(); //パスを閉じる
```


###### 直線

`ofVertex(100,100); `

###### 曲線

`ofCurveVertex(100,100); `

&nbsp;


## ofDrawEllipse を使って多角形を作る


```
//ofApp.h

void triangle(float x, float y, float width, float height);
void rectangle(float x, float y, float width, float height);
void pentagon(float x, float y, float width, float height);
void hexagon(float x, float y, float width, float height);
void heptagon(float x, float y, float width, float height);
void octagon(float x, float y, float width, float height);

```


```
//ofApp.cpp
//--------------------------------------------------------------
void ofApp::triangle(float x, float y, float width, float height){
    ofSetCircleResolution(3);
    ofDrawEllipse(x,y,width,height);
}

//--------------------------------------------------------------
void ofApp::rectangle(float x, float y, float width, float height){
    ofSetCircleResolution(4);
    ofDrawEllipse(x,y,width,height);
}

//--------------------------------------------------------------
void ofApp::pentagon(float x, float y, float width, float height){
    ofSetCircleResolution(5);
    ofDrawEllipse(x,y,width,height);
}

//--------------------------------------------------------------
void ofApp::hexagon(float x, float y, float width, float height){
    ofSetCircleResolution(6);
    ofDrawEllipse(x,y,width,height);
}

//--------------------------------------------------------------
void ofApp::heptagon(float x, float y, float width, float height){
    ofSetCircleResolution(7);
    ofDrawEllipse(x,y,width,height);
}

//--------------------------------------------------------------
void ofApp::octagon(float x, float y, float width, float height){
    ofSetCircleResolution(8);
    ofDrawEllipse(x,y,width,height);
}
```
