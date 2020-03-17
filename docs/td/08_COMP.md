# COMP (Component)

プログラミングを構築する部品

---

&nbsp;
&nbsp;

## 公式リファレンス
[COMP - Components](https://docs.derivative.ca/Component)


&nbsp;
&nbsp;


# OP

&nbsp;
&nbsp;

## Base

パラメーターを持たない箱。プロジェクトの格納に使う

&nbsp;
&nbsp;

## Button
ボタン
&nbsp;
&nbsp;


#### Button Type
- `Toggle Down` On/Off(0-1)切り替え
- `Momentary` 押しているときだけ On(1)

&nbsp;
&nbsp;

## Camera

3Dオブジェクト用のカメラ

![](img/camera_comp.png)

* Look At 被写体の向き


[3Dの仕組み](00_3D.md)

&nbsp;

### Geometry Viewer

カメラのオブジェクトの座標を確認できる

![](img/geometry_viewer.png)

&nbsp;
&nbsp;



## Container

インターフェイスを作るためのパネルコンポーネント

![](img/container_comp1.png)

`Look`の`Background TOP`から中身の最終表示OPを指定する

![](img/container_comp2.png)

`Layout`の`Width` `Height`で中身の最終表示OPのサイズを指定する

&nbsp;
&nbsp;



## Geometry

SOPの3Dオブジェクトを格納する

![](img/geometry_comp.png)

3Dの表示には`Camera` `Light` `Geometry`の3つのCOMPが必要になる。
3D空間を2Dに変換するのが`Render TOP`

&nbsp;
&nbsp;


## Light

3Dオブジェクト用のライト


&nbsp;
&nbsp;


## Panels


&nbsp;
&nbsp

## Slider
スライダー

![](img/slider_comp.png)



&nbsp;
&nbsp;

