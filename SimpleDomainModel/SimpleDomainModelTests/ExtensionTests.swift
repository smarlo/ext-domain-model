//
//  ExtensionTests.swift
//  ExtDomainModel
//
//  Created by Sabrina Niklaus on 4/12/17.
//  Copyright © 2017 Ted Neward. All rights reserved.
//

import XCTest
import ExtDomainModel

class ExtensionTests: XCTestCase {

    func testDouble() {
        let usd10: Double = 10.0
        XCTAssert(usd10.USD.description == (Money(amount: 10, currency: "USD")).description)
    }

}
