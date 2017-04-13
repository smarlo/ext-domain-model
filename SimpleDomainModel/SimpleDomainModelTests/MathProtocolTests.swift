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
        let first = Money(amount: 50, currency: "USD")
        let second = Money(amount: 50, currency: "USD")
        let sum = first + second
        XCTAssert(sum.description == "USD100")
    }
    
    func testMoneySubtraction() {
        let first = Money(amount: 50, currency: "USD")
        let second = Money(amount: 80, currency: "USD")
        let difference = second - first
        XCTAssert(difference.description == "USD30")
    }


}
