//
//  ConvertTest.swift
//  ExtDomainModel
//
//  Created by Sabrina Niklaus on 4/12/17.
//  Copyright © 2017 Ted Neward. All rights reserved.
//

import XCTest
import ExtDomainModel

class ConvertibleProtocolTests: XCTestCase {
        
    func testJobDescription() {
        let job = Job(title: "cashier", type: Job.JobType.Hourly(15))
        XCTAssert(job.description == "Title: cashier, Salary: 30000")
    }
    
    func testPersonDescription() {
        let person = Person(firstName: "Sabrina", lastName: "Niklaus", age: 20)
        XCTAssert(person.description == "Sabrina Niklaus, 20")
    }
    
    func testFamilyDescription() {
        let husband = Person(firstName: "Barack", lastName: "Obama", age: 55)
        let wife = Person(firstName: "Michelle", lastName: "Obama", age: 53)
        let family = Family(spouse1: husband, spouse2: wife)
        XCTAssert(family.description == "Barack Obama, Michelle Obama")
    }
    
    func testMoneyDescription() {
        let money = Money(amount: 20, currency: "CAN")
        XCTAssert(money.description == "CAN20")
    }
}
