# 05 インタラクション

マウスやキーボードの操作を制御する


## マウス座標

* ofGetMouseX()
* ofGetMouseY()

&nbsp;

## クリック 

マウスを押したら

##### mousePressed

```
void ofApp::mousePressed(int x, int y, int button){
    // 円の中心座標にクリックした位置の座標を設定
    clickPos.x = x;
    clickPos.y = y;
}
```

oFでは、mousePressed( int x, int y, int button)において、buttonでどのボタンかを得ます。
button = ０(左)、１（中央）、２（右）

```
void ofApp::mousePressed(int x, int y, int button){
    　if(button==0){
    　	// 左をクリックしたとき
    　}
}
```

&nbsp;


