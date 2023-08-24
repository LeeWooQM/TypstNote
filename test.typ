#import "temp.typ": note
#import "temp.typ": theorem
#import "temp.typ": definition
#import "temp.typ": deduction
#import "temp.typ": proof

#show: doc => note(
    title: "The Art of writing reasonable organic reaction mechanisms",
    author: "Christopher Grossword",
    logo: "/Picture/gege.jpeg",
    boxed_heading: true,
)[
    = 引言

    == WSND
    
    #definition(name: "导数")[
        导数是函数关于自变量的变化率，定义为:
        $ f^' (x) =( d y ) / ( d x ) $
    ]

    #deduction( name: "Nernst方程" )[
            Nernst方程描述了电对的还原电势与浓度的关系，可由Gibbs自由能推导:
            $ Delta_r G_m^theta = - R T ln Q^theta $
            $ Delta_r G_m^theta = n F E $
            $ n F E = - R T ln Q^theta $
            $ E = - ( R T ) / ( n F ) ln Q^theta  $
    ]

    #theorem( name: "数列极限唯一性" )[
        数列的极限是唯一的 \
        若$lim_(x -> + infinity)x_n = a$且
        $lim_(x -> + infinity)x_n = b$则
        $a=b$
    ]
    #proof()[
        不妨设$a < b$
        假设$a!=b$那么由极限定义得: \
        $ exists N_1 "对于" forall n > N_1 : |x_n - a| < ( b - a ) / 2  "推出" 
        x_n < ( a + b ) / 2 $
        $ exists N_2 "对于" forall n > N_2 : |x_n - b| < ( b - a ) / 2  "推出" 
        x_n > ( a + b ) / 2 $
        $ "对于任意的" n > max (N_1,N_2) : 
         x_n > ( a + b ) / 2 "且" x_n < ( a + b ) / 2 "推出矛盾 "$
         故 $ a = b $
    ]
    #pagebreak()
    = 序章
    #lorem(40) \
    `rbx` `rcx` \
    ```rs
        fn main() {
            println!("Hello,World!");
        }
    ```
    ```cpp
    #include <iostream>
    using namespace std;
    int main()
    {
        unsigned int i = 0;
        cin >> i;
        while (i)
        {
            i -= 1;
            cout << i << endl;
        }
    }
    ```
    
]


