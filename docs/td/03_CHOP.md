# CHOP (Channel Operator)

数値処理を行うオペレータ

---


&nbsp;
&nbsp;

## 公式リファレンス
[CHOP - Channel Operators](https://docs.derivative.ca/CHOP)

---

&nbsp;
&nbsp;

# OP

&nbsp;
&nbsp;


## Audio Device In
音の入力

&nbsp;
&nbsp;

## Audio Device Out

音の出力

&nbsp;
&nbsp;

## Audio Oscllator

音響合成

&nbsp;
&nbsp;

## Audio Spectrum

FFT周波数分析をする

![](img/audiospect_chop.png)


&nbsp;
&nbsp;


## Constant

変数、数値の保存。デフォルトでは名前が「chan1」となり0-1の間で保存ができる。
スライダに直接入力すると値をあげられることができる。1つのオペレーターに40個保存することができる。

![](img/constant_chop1.png)

&nbsp;
&nbsp;

## Count

数値を増減していく

![](img/count_chop.png)

* Limit で最小値と最大値を設定

&nbsp;
&nbsp;


## DAT to

DATからCHOPへの変換

### Tableからxyzの値を移行する

![](img/datto_chop.png)

* `Output`を `Channel per Column`
* `First Row is` を `Name`
* `First Column is` を `Value`


&nbsp;
&nbsp;

## Delay

遅延

![](img/delay_chop.png)

&nbsp;
&nbsp;

## Expression 

条件を分岐するオペレーター

![](img/expression_chop0.png)

```
//10以上になったら1を返す
me.inputVal > 10

```

&nbsp;

![](img/expression_chop2.png)

```
//30以上の場合は値が1、そうじゃない場合は0
1 if me.inputVal >= 30 else 0

```

&nbsp;
&nbsp;


## Filter

数値の変動をフィルタリングする。スムースあるいはシャープに

&nbsp;
&nbsp;

## Lag

時間を設定して数値が変動する。初速終速を調整できる。

&nbsp;
&nbsp;

## LFO 

周波数を生成する


![](img/lfo_chop1.png)

* `Type` 周波数の形

	* `Sin` サイン波 -1 から 1の繰り返し
	* `Gaussian` 0-1-0の繰り返し
	* `Triangle` 三角波　-1 から 1の繰り返し
	* `Ramp` 0-1 の繰り返し
	* `Square` 矩形波　-1 から 1の繰り返し
	* `Pulse` 点滅　-1 から 1の繰り返し

* `Frequency` 周期
* `Amplitude` 振幅


&nbsp;
&nbsp;


## Limit

入力値に最大・最小の制限をつける

&nbsp;
&nbsp;


## Logic

入力値を論理演算する

![](img/logic_chop.png)

* `Convert Input`
	* `Off When Zero`	入力が0の時False、それ以外はTrue
* `Combine CHOPs`
	* `And` 論理積　いずれも 1 の場合にTrue
	* `Or` 論理和　どちらかが 1 の場合にTrue

[参考:TouchDesignerでの論理演算](https://qiita.com/joe0hara/items/82f5de39ff82873e994b)

&nbsp;
&nbsp;


## Math

![](img/math_chop1.png)

### OP
- 複数のOPをつなぎ `Combile CHOPs` から四則演算

### Mult-Add

- `Multiply`で数値を掛け算

### Range

- `From Range`の値を`To Range`にマッピングする


&nbsp;
&nbsp;

## Merge

複数のCHOPの値をひとつにまとめる

![](img/merge_chop.png)


&nbsp;
&nbsp;

## Mouse In

マウス座標

![](img/mousein_chop.png)


&nbsp;
&nbsp;


## Noise
-1から1の間で自然な乱数を生成する。

![](img/noise_chop1.png)

`Time Slise`を`On`にすると連続で値を返す

![](img/noise_chop2.png)


&nbsp;
&nbsp;

## Null

何もないOP、前のOPのデータを引き継ぐ。
TouchDesignerでは出力前や最後のOPをNullにする

&nbsp;
&nbsp;


## OSC In

OSC 通信

![](img/oscin_chop.png)



&nbsp;
&nbsp;

## Parameter

特定のOPからパラメーターを出力する

![](img/par_chop.png)

* `Operators` 任意のOPをドラッグ
* `Built-in` を `On` に
* `Parameters` で出力したいパラメータを指定

&nbsp;
&nbsp;

## Pattern

周期をつくる

&nbsp;
&nbsp;

## Perform

パフォーマンスを計測する

![](img/perform_chop.png)

&nbsp;
&nbsp;

## Rename

チャンネル名を変える

&nbsp;
&nbsp;


## Select

チャンネルを絞る

![](img/select_chop.png)

Audioから片方のチャンネルを絞る

![](img/select_chop2.png)

OSCからひとつのチャンネルを絞る

&nbsp;
&nbsp;

## Shuffle

入力した値を並べ替える

&nbsp;
&nbsp;

## Speed

時間内に数値が変化する
第1入力に値が送られると毎秒1カウントづつ増加します。

<img src="img/speed_chop1.png" width="400">

&nbsp;

![](img/speed_chop2.png)

第2入力に0が送られるとリセットする


&nbsp;
&nbsp;



## Slope

入力値を微分する

&nbsp;
&nbsp;


## Trail

数値を視覚的グラフで表す

![](img/trail_chop1.png)


&nbsp;
&nbsp;

## Timer
タイマー

![](img/timer_chop.png)

* `Initialize` 初期化
* `Start` 開始
* `Length` タイマーの長さ
* `Speed` 速さ
* `Cue`
* `Cycle` 繰り返しの回数指定
* `On Done`の項目から`Re-Start`でループし続ける


```
# タイマーイベント

def onInitialize(timerOp):
	return 0

def onReady(timerOp):
	return
	
def onStart(timerOp):
	return
	
def onTimerPulse(timerOp, segment):
	return

def whileTimerActive(timerOp, segment, cycle, fraction):
	return

def onSegmentEnter(timerOp, segment, interrupt):
	return
	
def onSegmentExit(timerOp, segment, interrupt):
	return

def onCycleStart(timerOp, segment, cycle):
	return

def onCycleEndAlert(timerOp, segment, cycle, alertSegment, alertDone, interrupt):
	return
	
def onCycle(timerOp, segment, cycle):
	return

def onDone(timerOp, segment, interrupt):
	return
	
```

&nbsp;
&nbsp;

## TimeSlice

時間変化を生成する

![](img/wave_chop.png)

&nbsp;
&nbsp;


## Trigger

入力値に対して指定したしきい値`Trigger Threshold`を超えた場合1を返す

![](img/trigger_chop.png)

&nbsp;
&nbsp;



## Wave

周期を作る

![](img/wave_chop.png)