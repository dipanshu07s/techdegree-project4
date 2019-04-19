//
//  Entrant.swift
//  PassGenerator
//
//  Created by Dipanshu Sehrawat on 19/04/19.
//  Copyright © 2019 Dipanshu Sehrawat. All rights reserved.
//

import Foundation

enum GuestType {
    case child
    case classic
    case senior
    case vip
    case season
}

enum EmployeeType {
    case foodService
    case rideService
    case maintainance
}

enum ManagerType {
    case manager
}

enum ContractorType {
    case contractor
}

enum VendorType {
    case vendor
}

enum Benefit {
    case amusementAreaAccess
    case allRidesAccess
    case skipRideLines
    case kitchenAreaAccess
    case rideControlAreaAccess
    case maintenanceAreaAccess
    case officeAreaAccess
    case foodDiscount(Int)
    case merchandiseDiscount(Int)
}

protocol Entrant {
    associatedtype PersonType
    
    var type: PersonType { get set }
    
    func benefit(for type: PersonType) -> [Benefit]
}

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
    var zip: Int?
    
    init(firstName: String?, lastName: String?, dateOfBirth: Date?, ssn: Int?, project: Int?, company: String?, streetAddress: String?, city: String?, state: String?, zip: Int?) {
        self.firstName = firstName
        self.lastName = lastName
        self.dateOfBirth = dateOfBirth
        self.ssn = ssn
        self.project = project
        self.company = company
        self.streetAddress = streetAddress
        self.city = city
        self.state = state
        self.zip = zip
    }
}

class Guest: Person, Entrant {
    var type: GuestType
    
    init(type: GuestType, firstName: String?, lastName: String?, dateOfBirth: Date?, ssn: Int?, project: Int?, company: String?, streetAddress: String?, city: String?, state: String?, zip: Int?) {
        self.type = type
        super.init(firstName: firstName, lastName: lastName, dateOfBirth: dateOfBirth, ssn: ssn, project: project, company: company, streetAddress: streetAddress, city: city, state: state, zip: zip)
    }
    
    func benefit(for type: GuestType) -> [Benefit] {
        
        switch type {
        case .child, .classic: return [.amusementAreaAccess, .allRidesAccess]
        case .senior: return [.amusementAreaAccess, .allRidesAccess, .skipRideLines, .foodDiscount(10), .merchandiseDiscount(10)]
        case .vip, .season: return [.amusementAreaAccess, .allRidesAccess, .skipRideLines, .foodDiscount(10), .merchandiseDiscount(20)]
        }
    }
}

class Employee: Person, Entrant {
    var type: EmployeeType
    
    init(type: EmployeeType, firstName: String?, lastName: String?, dateOfBirth: Date?, ssn: Int?, project: Int?, company: String?, streetAddress: String?, city: String?, state: String?, zip: Int?) {
        self.type = type
        super.init(firstName: firstName, lastName: lastName, dateOfBirth: dateOfBirth, ssn: ssn, project: project, company: company, streetAddress: streetAddress, city: city, state: state, zip: zip)
    }
    
    func benefit(for type: EmployeeType) -> [Benefit] {
        
        switch type {
        case .foodService: return [.amusementAreaAccess, .kitchenAreaAccess, .allRidesAccess, .foodDiscount(15), .merchandiseDiscount(25)]
        case .rideService: return [.amusementAreaAccess, .rideControlAreaAccess, .allRidesAccess, .foodDiscount(15), .merchandiseDiscount(25)]
        case .maintainance: return [.amusementAreaAccess, .kitchenAreaAccess, .rideControlAreaAccess, .maintenanceAreaAccess, .allRidesAccess, .foodDiscount(15), .merchandiseDiscount(25)]
        }
    }
}

class Manager: Person, Entrant {
    var type: ManagerType
    
    init(type: ManagerType, firstName: String?, lastName: String?, dateOfBirth: Date?, ssn: Int?, project: Int?, company: String?, streetAddress: String?, city: String?, state: String?, zip: Int?) {
        self.type = type
        super.init(firstName: firstName, lastName: lastName, dateOfBirth: dateOfBirth, ssn: ssn, project: project, company: company, streetAddress: streetAddress, city: city, state: state, zip: zip)
    }
    
    func benefit(for type: ManagerType) -> [Benefit] {
        switch type {
        case .manager: return [.amusementAreaAccess, .kitchenAreaAccess, .rideControlAreaAccess, .maintenanceAreaAccess, .officeAreaAccess, .allRidesAccess, .foodDiscount(25), .merchandiseDiscount(25)]
        }
    }
}

class Contractor: Person, Entrant {
    var type: ContractorType
    
    init(type: ContractorType, firstName: String?, lastName: String?, dateOfBirth: Date?, ssn: Int?, project: Int?, company: String?, streetAddress: String?, city: String?, state: String?, zip: Int?) {
        self.type = type
        super.init(firstName: firstName, lastName: lastName, dateOfBirth: dateOfBirth, ssn: ssn, project: project, company: company, streetAddress: streetAddress, city: city, state: state, zip: zip)
    }
    
    func benefit(for type: ContractorType) -> [Benefit] {
        switch type {
        case .contractor: return [.amusementAreaAccess, .kitchenAreaAccess]
        }
    }
}

class Vendor: Person, Entrant {
    var type: VendorType
    
    init(type: VendorType, firstName: String?, lastName: String?, dateOfBirth: Date?, ssn: Int?, project: Int?, company: String?, streetAddress: String?, city: String?, state: String?, zip: Int?) {
        self.type = type
        super.init(firstName: firstName, lastName: lastName, dateOfBirth: dateOfBirth, ssn: ssn, project: project, company: company, streetAddress: streetAddress, city: city, state: state, zip: zip)
    }
    
    func benefit(for type: VendorType) -> [Benefit] {
        switch type {
        case .vendor: return [.amusementAreaAccess, .kitchenAreaAccess]
        }
    }
}
































