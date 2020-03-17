# Processing 基礎


## Processingとは

### 公式サイト
[https://processing.org/](https://processing.org/)

Casey ReasとBenjamin Fryによるオープンソースプロジェクト「Processing」であり、かつてはMITメディアラボで開発されていた。電子アートとビジュアルデザインのためのプログラミング言語であり、統合開発環境である。アーティストによるコンテンツ制作作業のために、詳細な設定を行う関数を排除している。 視覚的なフィードバックが即座に得られるため、初心者がプログラミングを学習するのに適しており、電子スケッチブックの基盤としても利用できる。Java を単純化し、グラフィック機能に特化した言語といえる。(ja.wikipediaより)

&nbsp;


## リファレンス

[公式リファレンス](https://processing.org/reference/)

&nbsp;

## 参考図書


![image](https://images-na.ssl-images-amazon.com/images/I/51PR950OGnL._SX350_BO1,204,203,200_.jpg)  
[Processingをはじめよう](https://www.oreilly.co.jp/books/9784873115153/)

&nbsp;

![image](https://images-na.ssl-images-amazon.com/images/I/41Eq81vSVPL._SX412_BO1,204,203,200_.jpg)  
[ジェネラティブ・アート](http://www.bnn.co.jp/books/7199/)


&nbsp;

## 事例紹介

### Flight Patterns

![image](http://www.aaronkoblin.com/wp-content/uploads/2015/08/hero-image3.jpg)
[http://www.aaronkoblin.com/project/flight-patterns/](http://www.aaronkoblin.com/project/flight-patterns/)


### creativeapplications 
[http://www.creativeapplications.net/category/processing/](http://www.creativeapplications.net/category/processing/)



&nbsp;

---
&nbsp;

## Processing エディタ(PDE)

PDE(Processing Development Environ ment)。Processingのプログラムを書いて実行するためのエディタ。

![image](img/PDE.png)




&nbsp;

## Processingの記法


* ベースの言語はJAVA
* すべて半角英数文字で記述する
* 命令文の最後は「;(セミコロン)」で終わる
* 文の途中で改行したり、空の行を入れても影響しない
* 命令文の区切りに半角スペースを入れる
* 単語の区切り以外に半角スペースを使っても影響しない

```
size(500, 500);
color mainColor;
mainColor = color(255, 166, 231);￼
fill(mainColor);
ellipse(250,250,50,50);

```

&nbsp;

### コメント

* 文中に「コメント」と呼ばれるメモを記述できる。
* コメントは日本語フォントを設定すれば全角文を記述できる。
* 1行コメントは「//」
* 複数行コメントは「/\*」と「\*/」で挟む。



```

/* 
初期設定
ここを最初に読み込む
*/


size(500, 500); //ウインドウのサイズ
color mainColor; // 色の変数 
mainColor = color(255, 166, 231);￼
fill(mainColor); // 塗り
ellipse(250,250,50,50); // 円の描画


```


&nbsp;
&nbsp;
&nbsp;



## Size 領域
描画エリアの領域

**size(ウインドウの幅,ウインドウの高さ);**

```
size(500,500);
```
&nbsp;
&nbsp;
&nbsp;
