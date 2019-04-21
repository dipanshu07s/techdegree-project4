//
//  Employee.swift
//  PassGenerator
//
//  Created by Dipanshu Sehrawat on 21/04/19.
//  Copyright © 2019 Dipanshu Sehrawat. All rights reserved.
//

import Foundation

extension EmployeeType {
    func areaAccess() -> [AreaAccess] {
        switch self {
        case .foodService: return [.amusement, .kitchen]
        case .rideService: return [.amusement, .rideControl]
        case .maintenance: return [.amusement, .kitchen, .rideControl, .maintenance]
        }
    }
    
    func rideAccess() -> [RideAccess] {
        return [.allRides]
    }
    
    func discounts() -> [Discounts] {
        return [.food(percentage: 15), .merchandise(percentage: 25)]
    }
}

class Employee: Person {
    let PersonType: PersonType = .employee
    
    init(firstName: String, lastName: String, streetAddress: String, city: String, state: String, zipCode: Int) {
        super.init(firstName: firstName, lastName: lastName, dateOfBirth: nil, ssn: nil, project: nil, company: nil, streetAddress: streetAddress, city: city, state: state, zipCode: zipCode)
    }
}

class FoodServiceEmployee: Employee {
    let employeeType: EmployeeType = .foodService
}

class RideServiceEmployee: Employee {
    let employeeType: EmployeeType = .rideService
}

class MaintenanceEmployee: Employee {
    let employeeType: EmployeeType = .maintenance
}
