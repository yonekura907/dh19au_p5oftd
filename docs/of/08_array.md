# 08 配列

## 静的配列

予め数が決まっている配列

```
配列データ型 配列の名前[配列の数];
```

&nbsp;


### int型配列

```
// 配列の数を定数で指定
// 一つのクラスに対して1つだけ存在し、しかも書き換えができない変数
static const int ARR_NUM = 5;


// 配列の作成 -----------------
int myArr[ARR_NUM];

// 配列myArrにデータを保存
myArr[0] = 10;
myArr[1] = 20;
myArr[2] = 30;
myArr[3] = 15;
myArr[4] = 5;
```


&nbsp;

### 宣言を省略した記述方法

```
int myArr[] = {10,20,30,15,5};
```

&nbsp;

<!--
**length**

配列の数を調べる

```
myArr.length
```-->


&nbsp;


## 動的配列

予め数が決まっていない配列

`vector <データ型> 配列の名前;`


```
vector<int> vec{ 1, 2, 3 };
for (int i=0; i<vec.size(); i++) {
    cout << "vec: " << vec[i] << endl;
}

```



#### 動的配列の末尾に値を追加する
`vec.push_back(追加する値);`

#### 動的配列の末尾から値を削除する
`vec.pop_back();`

#### 動的配列の途中に値を追加する
`vec.insert(イテレータ,値);`

#### 動的配列の途中に値を削除する
`vec.erase(vec.begin() + 2);`

#### 動的配列の数を調べる
`vec.size();`

&nbsp;

#### 参考リンク

[Introduction to vectors](https://openframeworks.cc/ofBook/chapters/stl_vector.html)


&nbsp;