# TOP (Texture Operator)

2D画像処理を行うオペレータ

---

&nbsp;
&nbsp;

## 公式リファレンス
[TOP - Texture Operators](https://docs.derivative.ca/TOP)


&nbsp;
&nbsp;


# OP

---

## Add

加算

![](img/add_top.png)

&nbsp;
&nbsp;


&nbsp;
&nbsp;

## Blur

ぼかし
 
![](img/blur_top.png)

* `Pre-Shrink` ぼかし幅
* `Filter Size` ぼかし量

`Filter Size`は処理の負荷が高い。可能であれば `Pre-Shrink`でぼかす

&nbsp;
&nbsp;


## Channel Mix

RGBAチャンネルを混合

### 透過を作成
![](img/top_channnelmix1.png)


&nbsp;
&nbsp;

## Chroma Key

クロマキー合成

![](img/chromakey_top.png)


&nbsp;
&nbsp;


## Circle

円形

![](img/circle_top.png)

![](img/circle_top2.png)

`Polygon`をOnにすると多角形になる

&nbsp;
&nbsp;

## Composite

画像合成

![](img/comp_top.png)

  - インプットが複数できる
  - Operation 合成の種類を選ぶ
  - Transform 合成のサイズを調整する

&nbsp;
&nbsp;


## Constant

単色を塗る

![](img/constant_top.png)

&nbsp;
&nbsp;


## Crop

切り取り

![](img/crop_top.png)

&nbsp;
&nbsp;

## Cross

クロスフェード

![](img/cross_top.png)

&nbsp;
&nbsp;

## Difference

2つの画像の差分を取得

&nbsp;
&nbsp;

## Displace

画像を歪める

![](img/displace_top.png)

&nbsp;
&nbsp;



## Edge
輪郭を抽出する

![](img/edge_top.png)

&nbsp;
&nbsp;

## Feedback
フィードバック・エフェクト(軌跡)を作成する

![](img/feedback_top.png)

`Target TOP`にフィードバックループの対象となるOPを指定する

&nbsp;
&nbsp;


## Fit

解像度やアスペクト比を調整する

![](img/fit_top.png)

&nbsp;
&nbsp;

## Flip

反転

![](img/flip_top.png)

&nbsp;
&nbsp;


## HSV Adjust

HSBカラーで調整


![](img/hsvadj_top.png)


* `Hue Offset` 色相の変更

&nbsp;
&nbsp;


## Level

レベル補正。イメージのコントラスト、明るさ、ガンマを調整する


![](img/level_top.png)

&nbsp;
&nbsp;


## Luma Blur

グラデーション型のぼかし

![](img/luma_blur_top.png)

&nbsp;
&nbsp;




## Math 

複数のOPの値を計算する
- Range マッピングする

&nbsp;
&nbsp;



## Movie File In

動画/画像の読み込み

![](img/moviefilein_top.png)

### Play
- Play Mode 
  - Sequential タイムラインに連動しない
  - Lock to Timeline タイムラインと連動する
- Speed 再生速度
- Cue CuePointから再生し直す
- Cue Point 途中から再生

### Trim
- Extend Right
  - Hold 1回で止まる
  - Cycleループ

&nbsp;
&nbsp;

## Movie File Out

画像の録画・書き出し、デスクトップに書き出す

&nbsp;
&nbsp;


## Multiply

乗算

&nbsp;
&nbsp;


## Noise

ノイズを生成する

![](img/noise_top1.png)

&nbsp;
&nbsp;

## Null
最終につなぐ
  - 右クリック > view ウインドウを固定

&nbsp;
&nbsp;

## Over

画像を重ねる

  
&nbsp;
&nbsp;

## Out

外部出力する

&nbsp;
&nbsp;

## Ramp

グラデーションを生成する

![](img/ramp_top.png)

&nbsp;
&nbsp;

## Rectangle
矩形

![](img/rectangle_top.png)

&nbsp;
&nbsp;


## Render

3DCGをレンダリングする

![](img/render_top.png)

&nbsp;
&nbsp;


## Reorder

RGBAの入出力を入れ替える

![](img/reorder_top.png)

&nbsp;
&nbsp;

## Switch


切り替える

![](img/switch_top.png)


&nbsp;
&nbsp;

## Subtract


減算

![](img/sub_top.png)


&nbsp;
&nbsp;



## Text

テキスト表示

![](img/text_top.png)

&nbsp;
&nbsp;


## Tile

反復パターン

![](img/tile_top.png)

&nbsp;
&nbsp;



## Transform

![](img/transform_top.png)


 * `Translate` XY座標移動
 * `Rotate` 回転　
 	* `absTime.frame` 時間に合わせて回転
 * `Scale` 拡大縮小
 * `Pivot` 回転軸　0.5/0.5で中央座標になる 
 * `Background Color`
 	* `Alpha`を1にすると背景が塗られる

&nbsp;
&nbsp;


## Under
下に

&nbsp;
&nbsp;



## Video Device in
Webカメラ

&nbsp;
&nbsp;



---









