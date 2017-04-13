//
//  MathProtocolTests.swift
//  ExtDomainModel
//
//  Created by Sabrina Niklaus on 4/12/17.
//  Copyright © 2017 Ted Neward. All rights reserved.
//

import XCTest
import ExtDomainModel

class MathProtocolTests: XCTestCase {

    func testMoneyAddition() {
        let left = Money(amount: 50, currency: "USD")
        let right = Money(amount: 50, currency: "USD")
        let sum = left.add(right)
        XCTAssert(sum.description == "USD100")
    }
    
    func testMoneySubtraction() {
        let left = Money(amount: 50, currency: "USD")
        let right = Money(amount: 80, currency: "USD")
        let sum = left.subtract(right)
        XCTAssert(sum.description == "USD30")
    }


}
