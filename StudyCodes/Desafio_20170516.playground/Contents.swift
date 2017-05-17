//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// desafio 1
let dasafio1Input = [1,1]
func fib(qtd:Int,ant:int=0, atual) -> Int{
    String result
    
    if qtd == 0 {
        print " 0 " + result
    }else{
        qtd = qtd - 1;
        fib()
        result = ""+ String(ant + atual)
    }
}

fib(4)
//    0 1 1 2 3
