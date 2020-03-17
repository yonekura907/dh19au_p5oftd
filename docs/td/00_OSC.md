# OSC

## OSCとは

OpenSound Control（OSC）とは、電子楽器（特にシンセサイザー）やコンピュータなどの機器において音楽演奏データをネットワーク経由でリアルタイムに共有するための通信プロトコルである。([Wikipedia](https://ja.wikipedia.org/wiki/OpenSound_Control))


対応アプリケーションは多数あり、リアルタイムに同期できる。

![](img/osc.png)


&nbsp;
&nbsp;

## OSCの設定

#### ネットワークアドレスの確認

![](img/ipadress.png)

&nbsp;
&nbsp;



## OSCの送信

### ZIG SIM のインストール

![](img/zigsim.png)

[Zig プロジェクト](https://zig-project.com/)


スマホアプリからOSC通信のテストができるアプリ

　<a href="https://apps.apple.com/jp/app/zig-sim/id1112909974"><img src="img/btn_appstore.png" alt=""></a>

<a href="https://play.google.com/store/apps/details?id=com.oneten.drive.zig_sim&pcampaignid=MKT-Other-global-all-co-prtnr-py-PartBadge-Mar2515-1"><img width="190" alt="Get it on Google Play" src="https://play.google.com/intl/en_us/badges/images/generic/en_badge_web_generic.png"></a>



&nbsp;
&nbsp;

### ZIG SIM の設定


![](img/zig1.png)

* タブバーの`Sensor`を選択
* `PRESSURE`と`2D TOUCH`を選ぶ 

&nbsp;


![](img/zig2.png)

* タブバーの`Settings`を選択
* `IP ADDRESS`にネットワークアドレスを入力
* `PORT NUMBER`を確認する 

&nbsp;

![](img/zig2.png)

* タブバーの`Start`を選択
* 画面内をドラッグする


## OSCの受信

### OSC in CHOPを配置

![](img/oscin.png)

* `Network Port`に ポート番号 `50000` を入力

&nbsp;

![](img/oscin2.png)

* `Channel Names`からに `touch01`を選択
* `Rename`に `touchX`と入力


&nbsp;
&nbsp;