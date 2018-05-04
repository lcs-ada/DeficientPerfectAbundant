//
//  main.swift
//  RotatingLetters
//
//  Created by Gordon, Russell on 2018-04-06.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

//INPUT
let n = 24

//PROCESS
var sum = 1
//  Check all numbers from 2 to halfway for n
for i in 2...n/2 {
    print(i)
    //Is i a divisor of n?
    if n % i == 0 {
        //i is a divisor so add to the sum
        sum += i
    }
}

//OUTPUT
if sum > n {   
    print("\(n) is an abundant number.")
} else if sum < n {
    print("\(n) is a deficient number.")
} else if sum == n {
    print("\(n) is a perfect number.")
}
