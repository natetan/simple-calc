//
//  main.swift
//  SimpleCalc
//
//  Created by Yulong Tan on 10/4/16.
//  Copyright © 2016 iGuest. All rights reserved.
//

import Foundation

print("Enter an expression seperated by returns: ");
let response1 = readLine(strippingNewline: true)!
let num1 = Int.init(response1);
let response2 = readLine(strippingNewline: true)!
let op = String.init(response2);
let response3 = readLine(strippingNewline: true)!
let num2 = Int.init(response3);

func add(a: Int, b: Int) -> Int {
    return a + b;
}

func sub(a: Int, b: Int) -> Int {
    return a - b;
}

func mul(a: Int, b: Int) -> Int {
    return a * b;
}

func div(a: Int, b: Int) -> Int{
    return a / b;
}

func mod(a: Int, b: Int) -> Int{
    return a % b;
}

func count() {
    
}

func avg() {
    
}

func fact() {
    
}

var result = 0;

if (op == "+") {
    result = add(a: num1!, b: num2!);
} else if (op == "-") {
    result = sub(a: num1!, b: num2!);
} else if (op == "*") {
    result = mul(a: num1!, b: num2!);
} else if (op == "/") {
    result = div(a: num1!, b: num2!);
} else if (op == "%") {
    result = mod(a: num1!, b: num2!);
}

print("Result: \(result)");




