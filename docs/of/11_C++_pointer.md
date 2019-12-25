# C++ Pointer



- ポインタ変数はアドレスを保存する変数
- ポインタ変数の宣言は型の後ろに* をつける `int* pNum` 
- 変数のアドレスを知るには &をつける  `&num` 
- ポインタ変数から値を取るには変数名の前に*をつける `*pNum`　間接参照演算子


```
#include <iostream>
using namespace std;
    
int main(){
    int num;
    num = 5;
    
    int* pNum; // ポインタ変数 
    pNum = &num; // ポインタ変数に、int型numのアドレスを保存
    
    cout << "変数numの値は" << num << "です。\n";
    cout << "変数numのアドレス(&num)は" << &num << "です。\n";
    cout << "ポインタ変数pNumの値は" << pNum << "です。\n";
    cout << "*pNumの値は" << *pNum << "です。\n"; // 5を返す
    
    return 0;
}

```

&nbsp;


### 値渡し：ポインタを使わないパターン
```
    #include <iostream>
    using namespace std;
    
    // void swap(int* pX, int* pY);
    
    int main(){
    
        int a = 5;
        int newA = a;
    
        newA = 50;
    
        cout << "参照newAの値は" << newA << endl; // 50
        cout << "変数aの値は" << a << endl; // 5
    
        return 0;
    }
```

値のコピーになるので、元のaは変更されない

&nbsp;

### 参照渡し：ポインタを使うパターン

```
#include <iostream>
using namespace std;
    
int main(){
    int a = 5;
    int* pA = &a; // ポインタ変数にaのアドレスを保存
    
    cout << "変数aの値は" << a << endl;
    cout << "変数aののアドレスは" << &a << endl;
    cout << "ポインタ変数pAの値は" << &pA << endl;
    cout << "*pAの値は" << *pA << endl;
    
    *pA = 50;
    
    cout << "*pA値は" << *pA << endl;
    cout << "変数aの値も" << a << endl;
    
    return 0;
}
```

ポインタ変数に*付けてアドレスの値にアクセスすると元の変数を上書きできる

&nbsp;

### 引数にポインタを使った値の交換
```
#include <iostream>
    
void swap(int* pX, int* pY);
    
int main(){
    int num1 = 5;
    int num2 = 10;
    std::cout << "num1: " << num1 << '\n';
    std::cout << "num2: " << num2 << '\n';
    std::cout << "swap: " << '\n';
    
    swap(&num1, &num2);
    
    std::cout << "num1: " << num1 << '\n';
    std::cout << "num2: " << num2 << '\n';
    return 0;
}
    
    
void swap(int* pX, int* pY){
    int tmp;
    tmp = *pX;
    *pX = *pY;
    *pY = tmp;
}
```  
&nbsp;

### 参照による値の入れ替え
```
#include <iostream>
using namespace std;
    
int main(){
    int a = 5;
    int& rA = a; // 参照にaの値を保存
    cout << "変数aの値は" << a << endl;
    cout << "参照rAの値は" << rA << endl;
    
    rA = 50;
    cout << "参照rA値は" << rA << endl;
    cout << "変数aの値も" << a << endl;
    
    return 0;
}

```
&nbsp;

### 配列とポインタ

```

#include <iostream>
using namespace std;
    
int main(){
    
    int test[5];
    test[0] = 80;
    test[1] = 60;
    test[2] = 20;
    test[3] = 40;
    test[4] = 50;
    
    cout << "配列の先頭アドレスは" << test << "です。" << endl;
    cout << "配列の2つ目アドレスは" << test+1 << "です。" << endl;
    cout << "配列の2つ目の値は" << *(test+1) << "です。" << endl;
    
    return 0;
}




#include <iostream>
using namespace std;
    
// avg関数宣言
double avg(int* pT); 
    
int main(){
    
    int test[5];
    
    test[0] = 80;
    test[1] = 60;
    test[2] = 20;
    test[3] = 40;
    test[4] = 50;
    
   double ans = avg(test);
    
    cout << "平均点は" << ans << "です。" << endl;
    
    
    return 0;
}
    
    
double avg(int* pT){
    double sum = 0;
    for (int i = 0; i < 5; i++){
        sum += *(pT + i);
    }
    return sum/5;
}
    

```

&nbsp;

### 動的メモリ
```
#include <iostream>
using namespace std;
    
int main(){
    
    int* pA;
    pA = new int; // 動的メモリの確保
    *pA = 50;
    
    cout << "pAのアドレスは" << pA << "です。" << endl;
    cout << "pAの値は" << *pA << "です。" << endl;
    
    delete pA; // 動的メモリの解放
    
    cout << "動的メモリを解放しました。" << endl;
    
    return 0;
}

```

&nbsp;

### クラスとポインタ
```

#include <iostream>
using namespace std;
    
// クラス
class Car{
public:
    int num;
    double gas;
    void show();
};
    
    
// 関数宣言
void Car::show(){
    cout << "車のナンバーは" << num << "です。" << endl;
    cout << "車のガソリンは" << gas << "です。" << endl;
}
    
int main(){
    
    Car* pCar1; // ポインタでクラスを宣言
    pCar1 = new Car;
    
    pCar1->num = 12345;
    pCar1->gas = 25.5;
    
    pCar1->show();
    
    delete pCar1;
    
    return 0;
}
```
