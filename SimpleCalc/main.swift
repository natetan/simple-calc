//
//  main.swift
//  SimpleCalc
//
//  Created by Yulong Tan on 10/4/16.
//  Copyright © 2016 iGuest. All rights reserved.
//

import Foundation

print("Enter a an availble method; calc, count, avg, fact")
let operation = readLine(strippingNewline: true)!
let method = String.init(operation)

if (method == "calc") {
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
    var result = 0;
    var message = "";
    var isValid = true;
    
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
    } else {
        isValid = false;
        print("Invalid operator: \(op)");
    }
    
    message = "Result: \(result)";
    
    if (isValid) {
        print(message);
    }
} else if (method == "count") {
    func count(numbers: [Int]) -> Int {
        return numbers.count;
    }
    print("Type in numbers separated by spaces")
    let response = readLine(strippingNewline: true)!
    let nums = String.init(response)
    var arr = nums!.components(separatedBy: " ")
    var arr2 : [Int] = []
    for i in 0...arr.count - 1 {
        var num = Int(i)
        var temp = Int(arr[num])
        arr2.append(temp!)
    }
    print("Count: \(count(numbers: arr2))")
} else if (method == "avg") {

    func avg(numbers: [Int]) -> Int {
        var sum = 0;
        var count = numbers.count;
        var index = 0;
        while (count > 0) {
            sum += numbers[index];
            index += 1;
            count -= 1;
        }
        return sum / numbers.count;
    }
    print("Type in numbers separated by spaces")
    let response = readLine(strippingNewline: true)!
    let nums = String.init(response)
    var arr = nums!.components(separatedBy: " ")
    var arr2 : [Int] = []
    for i in 0...arr.count - 1 {
        var num = Int(i)
        var temp = Int(arr[num])
        arr2.append(temp!)
    }
    print("Average: \(avg(numbers: arr2))")
    
} else if (method == "fact") {
    func fact(num: Int) -> Int {
        if (num < 0) {
            print("You don't have any understanding of factorials if you put in a negative number")
            return -1
        } else if (num == 0 || num == 1) {
            return 1;
        } else {
            return num * fact(num: (num - 1));
        }
    }
    print("Factorial of what?")
    let response = readLine(strippingNewline: true)!
    let num = Int.init(response);
    print("Result: \(fact(num: num!))")
    
} else {
    print("The \(method) method doesn't exist")
}






