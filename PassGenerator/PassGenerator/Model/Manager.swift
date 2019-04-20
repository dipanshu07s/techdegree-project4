//
//  Manager.swift
//  PassGenerator
//
//  Created by Dipanshu Sehrawat on 20/04/19.
//  Copyright © 2019 Dipanshu Sehrawat. All rights reserved.
//

import Foundation

class Manager: Person, Entrant {
    var benefits: [Benefit] = [.amusementAreaAccess, .kitchenAreaAccess, .rideControlAreaAccess, .maintenanceAreaAccess, .officeAreaAccess, .allRidesAccess, .foodDiscount(percentage: 25), .merchandiseDiscount(percentage: 25)]
    
    init(firstName: String, lastName: String, streetAddress: String, city: String, state: String, zip: Int) {
        super.init(firstName: firstName, lastName: lastName, dateOfBirth: nil, ssn: nil, project: nil, company: nil, streetAddress: streetAddress, city: city, state: state, zip: zip)
    }
}