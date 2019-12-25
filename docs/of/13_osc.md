# OSC

## OSCとは

OpenSound Control（OSC）とは、電子楽器（特にシンセサイザー）やコンピュータなどの機器において音楽演奏データをネットワーク経由でリアルタイムに共有するための通信プロトコルである。([Wikipedia](https://ja.wikipedia.org/wiki/OpenSound_Control))


対応アプリケーションは多数あり、リアルタイムに同期できる。

![](img/osc.png)


&nbsp;

## OSCの設定

#### ネットワークアドレスの確認

![](img/ipadress.png)

&nbsp;


## ofxOsc

addonのofxOscを追加

![](img/addon_osc.png)


&nbsp;

## OSCの送受信

### OSCの送信

* IPを指定 ローカル: `127.0.0.1`
* ポート番号を指定
* アドレス `/trigger/xxx/` を使うことで複数の値を送ることができる

```
// ofApp.h

#pragma once

#include "ofMain.h"
#include "ofxOsc.h" //インクルード

class ofApp : public ofBaseApp{

	public:
		void setup();
		void update();
		void draw();

		void mouseDragged(int x, int y, int button);
    	// ポート番号
	   static const int PORT = 7400;
	   // Osc送信用のインスタンス変数
	   ofxOscSender sender;
};

```

```
//ofApp.opp
void ofApp::setup(){
    ofSetFrameRate(60);
    ofBackground(0);
    
    // Osc送信のセットアップ
    sender.setup("127.0.0.1", PORT);
}

void ofApp::draw(){
	
}
void ofApp::mouseDragged(int x, int y, int button){
    // OSCで送信するデータの作成
    ofxOscMessage msg;
    
    // アドレスを設定
    msg.setAddress("/mouse/dragged");
    
    // ドラッグしたX座標
    msg.addIntArg(x);
    // ドラッグしたY座標
    msg.addIntArg(y);
    
    // OSC送信
    sender.sendMessage(msg);   
}
```

&nbsp;


### OSCの受信

* ポート番号を指定
* 送信側と同じ識別子 `/trigger/xxx/` を使うことで受け取ることができる

```
// ofApp.h

#pragma once

#include "ofMain.h"
#include "ofxOsc.h" //インクルード

class ofApp : public ofBaseApp{

	public:
		void setup();
		void update();
		void draw();
		
		//受信するポート番号
		static const int PORT = 7400;
    
	    //OSCのレシーバー
	    ofxOscReceiver receiver;
	    
	    // OSCで受信した座標を保存する
	    ofVec2f pos;
};

```

```
//ofApp.opp
void ofApp::setup(){
    ofSetFrameRate(60);
    ofBackground(0);
    
    // Osc受信のセットアップ
    receiver.setup(PORT);
}

void ofApp::update(){
    //OSCデータの受信待ち
    while(receiver.hasWaitingMessages()){
        //受信用のインスタンス変数
        ofxOscMessage msg;
        receiver.getNextMessage(msg);
        
        //受信側の識別子と同じ条件で
        if(msg.getAddress() == "/mouse/dragged"){
            pos.x = msg.getArgAsInt(0);
            pos.y = msg.getArgAsInt(1);
        }
    }
}


void ofApp::draw(){
    ofSetColor(255, 0, 0);
    ofDrawCircle(pos.x, pos.y, 20);
}

```

