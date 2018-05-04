//
//  main.swift
//  RotatingLetters
//
//  Created by Gordon, Russell on 2018-04-06.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

//INPUT
var validInput = 0
//Loop forever until vaild input is found
while 1 == 1 {
    

//test 1: ensure input is not nil
guard let givenInput = readLine()else {
    continue //go to the top of the loop
     }

    //test 2: Is it an Integer?
     guard let givenInteger = Int(givenInput) else {
     continue// go to the top of the while loop
     }

    //test 3: Is the integer in the correct range?
    //less than 1 OR more than 32500
    if givenInteger < 1 || givenInteger > 32500 {
    continue //go to top of the while loop
     }

validInput = givenInteger

break //Important: get us out of the infinite loop

} //END of while loop


//PROCESS
var sum = 1
//  Check all numbers from 2 to halfway for n
for i in 2...validInput/2 {
    print(i)
    //Is i a divisor of n?
    if validInput % i == 0 {
        //i is a divisor so add to the sum
        sum += i
    }
}

//OUTPUT
if sum > validInput {
    print("\(validInput) is an abundant number.")
} else if sum < validInput {
    print("\(validInput) is a deficient number.")
} else if sum == validInput {
    print("\(validInput) is a perfect number.")
}


