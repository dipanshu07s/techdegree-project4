//
//  Person.swift
//  PassGenerator
//
//  Created by Dipanshu Sehrawat on 21/04/19.
//  Copyright © 2019 Dipanshu Sehrawat. All rights reserved.
//

import Foundation

class Person {
    var firstName: String?
    var lastName: String?
    var dateOfBirth: Date?
    var ssn: Int?
    var project: Int?
    var company: String?
    var streetAddress: String?
    var city: String?
    var state: String?
    var zipCode: Int?
    
    init(firstName: String?, lastName: String?, dateOfBirth: Date?, ssn: Int?, project: Int?, company: String?, streetAddress: String?, city: String?, state: String?, zipCode: Int?) {
        self.firstName = firstName
        self.lastName = lastName
        self.dateOfBirth = dateOfBirth
        self.ssn = ssn
        self.project = project
        self.company = company
        self.streetAddress = streetAddress
        self.city = city
        self.state = state
        self.zipCode = zipCode
    }
}
