//
//  Employee.swift
//  PassGenerator
//
//  Created by Dipanshu Sehrawat on 20/04/19.
//  Copyright © 2019 Dipanshu Sehrawat. All rights reserved.
//

import Foundation

class Employee: Person {
    
    init(firstName: String, lastName: String, streetAddress: String, city: String, state: String, zip: Int) {
        super.init(firstName: firstName, lastName: lastName, dateOfBirth: nil, ssn: nil, project: nil, company: nil, streetAddress: streetAddress, city: city, state: state, zip: zip)
    }
}

class FoodServiceEmployee: Employee, Entrant {
    var benefits: [Benefit] = [.amusementAreaAccess, .kitchenAreaAccess, .allRidesAccess, .foodDiscount(percentage: 15), .merchandiseDiscount(percentage: 25)]
}

class RideServiceEmployee: Employee, Entrant {
    var benefits: [Benefit] = [.amusementAreaAccess, .rideControlAreaAccess, .allRidesAccess, .foodDiscount(percentage: 15), .merchandiseDiscount(percentage: 25)]
}

class Maintenance: Employee, Entrant {
    var benefits: [Benefit] = [.amusementAreaAccess, .kitchenAreaAccess, .rideControlAreaAccess, .maintenanceAreaAccess, .allRidesAccess, .foodDiscount(percentage: 15), .merchandiseDiscount(percentage: 25)]
}
