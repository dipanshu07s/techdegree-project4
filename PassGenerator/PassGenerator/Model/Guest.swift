//
//  Guest.swift
//  PassGenerator
//
//  Created by Dipanshu Sehrawat on 20/04/19.
//  Copyright © 2019 Dipanshu Sehrawat. All rights reserved.
//

import Foundation

class ChildGuest: Person, Entrant {
    var benefits: [Benefit] = [.amusementAreaAccess, .allRidesAccess]
    
    init(dateOfBirth: Date) {
        super.init(firstName: nil, lastName: nil, dateOfBirth: dateOfBirth, ssn: nil, project: nil, company: nil, streetAddress: nil, city: nil, state: nil, zip: nil)
    }
}

class ClassicGuest: Person, Entrant {
    var benefits: [Benefit] = [.amusementAreaAccess, .allRidesAccess]
    
    init() {
        super.init(firstName: nil, lastName: nil, dateOfBirth: nil, ssn: nil, project: nil, company: nil, streetAddress: nil, city: nil, state: nil, zip: nil)
    }
}

class SeniorGuest: Person, Entrant {
    var benefits: [Benefit] = [.amusementAreaAccess, .allRidesAccess, .skipRideLines, .foodDiscount(percentage: 10), .merchandiseDiscount(percentage: 10)]
    
    init(firstName: String, lastName: String, dateOfBirth: Date) {
        super.init(firstName: firstName, lastName: lastName, dateOfBirth: dateOfBirth, ssn: nil, project: nil, company: nil, streetAddress: nil, city: nil, state: nil, zip: nil)
    }
}

class VipGuest: Person, Entrant {
    var benefits: [Benefit] = [.amusementAreaAccess, .allRidesAccess, .skipRideLines, .foodDiscount(percentage: 10), .merchandiseDiscount(percentage: 20)]
    
    init() {
        super.init(firstName: nil, lastName: nil, dateOfBirth: nil, ssn: nil, project: nil, company: nil, streetAddress: nil, city: nil, state: nil, zip: nil)
    }
}

class SeasonGuest: Person, Entrant {
    
    var benefits: [Benefit] = [.amusementAreaAccess, .allRidesAccess, .skipRideLines, .foodDiscount(percentage: 10), .merchandiseDiscount(percentage: 20)]
    
    init(firstName: String, lastName: String, streetAddress: String, city: String, state: String, zip: Int) {
        super.init(firstName: firstName, lastName: lastName, dateOfBirth: nil, ssn: nil, project: nil, company: nil, streetAddress: streetAddress, city: city, state: state, zip: zip)
    }
}
